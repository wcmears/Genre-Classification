function classifier(inputSignal)
    signal = audioread(inputSignal); #read in input signal
    genreMatrix = readmatrix('genreMatrix.txt'); #read previously created definition of genres
    classicalrolloffMean = mean(mirgetdata(mirrolloff(miraudio(signal),'frame'))); #calculate mean rolloff of signal
    classicalrolloffStd = std(mirgetdata(mirrolloff(miraudio(signal),'frame'))); #calculate std rolloff of signal
    inputVector = [ mean(nonzeros(mean(mirgetdata(mirtonalcentroid(miraudio(signal),'frame'))))) std(nonzeros(std(mirgetdata(mirtonalcentroid(miraudio(signal),'frame'))))) classicalrolloffMean classicalrolloffStd mean(nonzeros(mirgetdata(mirflux(miraudio(signal),'frame')))) std(nonzeros(mirgetdata(mirflux(miraudio(signal),'frame')))) mean(nonzeros(mirgetdata(mirzerocross(miraudio(signal),'frame')))) std(nonzeros(mirgetdata(mirzerocross(miraudio(signal),'frame')))) mean(nonzeros(mirgetdata(mirlowenergy(miraudio(signal))))) ]; #create row of features for input signal to be compared to genre matrix rows
    for i = 1 : 1 : 4
        R(i) =  mean(mean(corrcoef(inputVector, genreMatrix(i,:)))); #calculate correlation coefficient between data from input source and defined matrix
    end
    #display genre with highest corrcoef
    if R(1) == max(R)
        disp("rock");
    end
    if R(2) == max(R)
        disp("pop");
    end
    if R(3) == max(R)
        disp("classical"); 
    end
    if R(4) == max(R)
        disp("metal");
    end
        
            
    
    
