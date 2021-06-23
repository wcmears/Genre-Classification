function classifier(inputSignal)
    signal = audioread(inputSignal);
    genreMatrix = readmatrix('genreMatrix.txt');
    classicalrolloffMean = mean(mirgetdata(mirrolloff(miraudio(signal),'frame')));
    classicalrolloffStd = std(mirgetdata(mirrolloff(miraudio(signal),'frame')));
    inputVector = [ mean(nonzeros(mean(mirgetdata(mirtonalcentroid(miraudio(signal),'frame'))))) std(nonzeros(std(mirgetdata(mirtonalcentroid(miraudio(signal),'frame'))))) classicalrolloffMean classicalrolloffStd mean(nonzeros(mirgetdata(mirflux(miraudio(signal),'frame')))) std(nonzeros(mirgetdata(mirflux(miraudio(signal),'frame')))) mean(nonzeros(mirgetdata(mirzerocross(miraudio(signal),'frame')))) std(nonzeros(mirgetdata(mirzerocross(miraudio(signal),'frame')))) mean(nonzeros(mirgetdata(mirlowenergy(miraudio(signal))))) ];
    for i = 1 : 1 : 4
        R(i) =  mean(mean(corrcoef(inputVector, genreMatrix(i,:))));
    end
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
        
            
    
    