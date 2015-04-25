function personName = test(fileName)
    global net;
    global classNames;
    
    testLbp = lbp_raw_2(fileName);
    output = sim(net, testLbp');
    highValue = output(1);
    highIndex = 1;
    numHigh = 0;
    if(output(1)>0.5)
        numHigh = 1;
    end
    for i=2:size(output)
        if output(i) > highValue
            highValue = output(i);
            highIndex = i;
        end
        
        if output(i) > 0.5
            numHigh = numHigh+1;
        end
    end
    if(numHigh == 1)
        personName = strtrim(classNames(highIndex,:));
    else
        personName = 'ambiguous';
    end