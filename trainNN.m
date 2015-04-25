% Start training using data from the training folder, which can be set
% below. Each person's faces should be put in a separate folder, with the
% folder named after the person

global classNames;
global numclasses;
global X;
global Y;
global randomInitRequired;
global net;

randomInitRequired = true;

trainingFolder = 'Database/Train/';
trainClasses = ls(trainingFolder);
classNames = trainClasses(3:end, :);
X = [];
Y = [];
numclasses = size(classNames,1);
for i=1:numclasses
    classFolder = [trainingFolder  strtrim(classNames(i,:)) '/'];
    trainFiles = ls(classFolder);
    for j=3:size(trainFiles,1)
        trainFile = strtrim(trainFiles(j,:));
        if(trainFile(1) == '.')
            continue;
        end
        lbp = lbp_raw_2([classFolder trainFile]);
        X = [X;lbp;lbp;lbp;lbp];
        op = zeros(1, numclasses);
        op(i) = 1;
        Y = [Y;op;op;op;op];
    end
end

net = create_pr_net(X', Y');