% Start training using data from the training folder, which can be set
% below. Each person's faces should be put in a separate folder, with the
% folder named after the person

global classNames;
global numclasses;
global X;
global Y;
global randomInitRequired;
global svmStruct;

randomInitRequired = true;

trainingFolder = 'Database/Train/';
trainClasses = ls(trainingFolder);
classNames = trainClasses(3:end, :);
X = [];
Y = [];
numclasses = size(classNames,1);
for i=1:numclasses
    className = strtrim(classNames(i,:));
    classFolder = [trainingFolder  className '/'];
    trainFiles = ls(classFolder);
    for j=3:size(trainFiles,1)
        trainFile = strtrim(trainFiles(j,:));
        if(trainFile(1) == '.')
            continue;
        end
        lbp = lbp_raw_2([classFolder trainFile]);
        X = [X;lbp];
        Y = [Y;i];
    end
end

svmStruct = [];
for i=1:numclasses
    className = strtrim(classNames(i,:));
    Yd = Y;
    for j=1:size(Yd, 1)
        if(Yd(j) ~= i)
            Yd(j) = 0;
        end
    end
    svmStruct = [svmStruct; svmtrain(X, Yd)];
end