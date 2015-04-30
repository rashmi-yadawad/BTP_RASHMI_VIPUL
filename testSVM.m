function personName = testSVM(fileName)
    global svmStruct;
    global classNames;
    
    testLbp = lbp_raw_2(fileName);
    foundIndex = 0;
    for i=1:size(classNames, 1)
        output = svmclassify(svmStruct(i),testLbp);
        if(output(1) ~= 0)
            if(foundIndex ~= 0)
                foundIndex = 0;
            else
                foundIndex = i;
            end
        end
    end
    if(foundIndex ~= 0)
        personName = strtrim(classNames(foundIndex,:));
        disp(strcat('Match found: ', personName));
    else
        personName = 'ambiguous';
        disp('Sorry, no match found');
    end