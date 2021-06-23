function confusionMatrixGenerator
    genreMatrix = readmatrix('genreMatrix.txt');
    BasePath = dir('C:\Users\wmears\Documents\MATLAB\Genre Classification\MIRToolbox\SixGenres\genres_original\classical');
    classicalArchives = {BasePath.name};
    BasePath = dir('C:\Users\wmears\Documents\MATLAB\Genre Classification\MIRToolbox\SixGenres\genres_original\blues');
    bluesArchives = {BasePath.name};
    BasePath = dir('C:\Users\wmears\Documents\MATLAB\Genre Classification\MIRToolbox\SixGenres\genres_original\country');
    countryArchives = {BasePath.name};
    BasePath = dir('C:\Users\wmears\Documents\MATLAB\Genre Classification\MIRToolbox\SixGenres\genres_original\disco');
    discoArchives = {BasePath.name};
    BasePath = dir('C:\Users\wmears\Documents\MATLAB\Genre Classification\MIRToolbox\SixGenres\genres_original\hiphop');
    hiphopArchives = {BasePath.name};
    BasePath = dir('C:\Users\wmears\Documents\MATLAB\Genre Classification\MIRToolbox\SixGenres\genres_original\jazz');
    jazzArchives = {BasePath.name};
    BasePath = dir('C:\Users\wmears\Documents\MATLAB\Genre Classification\MIRToolbox\SixGenres\genres_original\metal');
    metalArchives = {BasePath.name};
    BasePath = dir('C:\Users\wmears\Documents\MATLAB\Genre Classification\MIRToolbox\SixGenres\genres_original\pop');
    popArchives = {BasePath.name};
    BasePath = dir('C:\Users\wmears\Documents\MATLAB\Genre Classification\MIRToolbox\SixGenres\genres_original\reggae');
    reggaeArchives = {BasePath.name};
    BasePath = dir('C:\Users\wmears\Documents\MATLAB\Genre Classification\MIRToolbox\SixGenres\genres_original\rock');
    rockArchives = {BasePath.name};
    confusionMatrix = { 0 "rock" "pop" "classical" "metal" ; "rock" 0 0 0 0 ; "pop" 0 0 0 0 ; "classical" 0 0 0 0; "metal" 0 0 0 0};
    for j = 3 : 1 : 102
        signal = audioread(classicalArchives{j});
        inputRolloff = mirgetdata(mirrolloff(miraudio(signal),'frame'));
        inputRolloff(isnan(inputRolloff))=[];
        inputRolloffMean = mean(nonzeros(inputRolloff));
        inputRolloffStd = std(nonzeros(inputRolloff));
        inputVector = [ mean(mean(nonzeros(mirgetdata(mirtonalcentroid(miraudio(signal),'frame'))))) std(std(nonzeros(mirgetdata(mirtonalcentroid(miraudio(signal),'frame'))))) inputRolloffMean inputRolloffStd mean(nonzeros(mirgetdata(mirflux(miraudio(signal),'frame')))) std(nonzeros(mirgetdata(mirflux(miraudio(signal),'frame')))) mean(nonzeros(mirgetdata(mirzerocross(miraudio(signal),'frame')))) std(nonzeros(mirgetdata(mirzerocross(miraudio(signal),'frame')))) mean(nonzeros(mirgetdata(mirlowenergy(miraudio(signal))))) ];
        for i = 1 : 1 : 4
            R(i) =  mean(mean(corrcoef(inputVector, genreMatrix(i,:))));
        end
        if R(1) == max(R)
            confusionMatrix{2,4}=confusionMatrix{2,4}+1;
        end
        if R(2) == max(R)
            confusionMatrix{3,4}=confusionMatrix{3,4}+1;
        end
        if R(3) == max(R)
            confusionMatrix{4,4}=confusionMatrix{4,4}+1;
        end
        if R(4) == max(R)
            confusionMatrix{5,4}=confusionMatrix{5,4}+1;
        end
    end
    for j = 3 : 1 : 102
        signal = audioread(popArchives{j});
        inputRolloff = mirgetdata(mirrolloff(miraudio(signal),'frame'));
        inputRolloff(isnan(inputRolloff))=[];
        inputRolloffMean = mean(nonzeros(inputRolloff));
        inputRolloffStd = std(nonzeros(inputRolloff));
        inputVector = [ mean(mean(nonzeros(mirgetdata(mirtonalcentroid(miraudio(signal),'frame'))))) std(std(nonzeros(mirgetdata(mirtonalcentroid(miraudio(signal),'frame'))))) inputRolloffMean inputRolloffStd mean(nonzeros(mirgetdata(mirflux(miraudio(signal),'frame')))) std(nonzeros(mirgetdata(mirflux(miraudio(signal),'frame')))) mean(nonzeros(mirgetdata(mirzerocross(miraudio(signal),'frame')))) std(nonzeros(mirgetdata(mirzerocross(miraudio(signal),'frame')))) mean(nonzeros(mirgetdata(mirlowenergy(miraudio(signal))))) ];
        for i = 1 : 1 : 4
            R(i) =  mean(mean(corrcoef(inputVector, genreMatrix(i,:))));
        end
        if R(1) == max(R)
            confusionMatrix{2,3}=confusionMatrix{2,3}+1;
        end
        if R(2) == max(R)
            confusionMatrix{3,3}=confusionMatrix{3,3}+1;
        end
        if R(3) == max(R)
            confusionMatrix{4,3}=confusionMatrix{4,3}+1;
        end
        if R(4) == max(R)
            confusionMatrix{5,3}=confusionMatrix{5,3}+1;
        end
    end
    for j = 3 : 1 : 102
        signal = audioread(metalArchives{j});
        inputRolloff = mirgetdata(mirrolloff(miraudio(signal),'frame'));
        inputRolloff(isnan(inputRolloff))=[];
        inputRolloffMean = mean(nonzeros(inputRolloff));
        inputRolloffStd = std(nonzeros(inputRolloff));
        inputVector = [ mean(mean(nonzeros(mirgetdata(mirtonalcentroid(miraudio(signal),'frame'))))) std(std(nonzeros(mirgetdata(mirtonalcentroid(miraudio(signal),'frame'))))) inputRolloffMean inputRolloffStd mean(nonzeros(mirgetdata(mirflux(miraudio(signal),'frame')))) std(nonzeros(mirgetdata(mirflux(miraudio(signal),'frame')))) mean(nonzeros(mirgetdata(mirzerocross(miraudio(signal),'frame')))) std(nonzeros(mirgetdata(mirzerocross(miraudio(signal),'frame')))) mean(nonzeros(mirgetdata(mirlowenergy(miraudio(signal))))) ];
        for i = 1 : 1 : 4
            R(i) =  mean(mean(corrcoef(inputVector, genreMatrix(i,:))));
        end
        if R(1) == max(R)
            confusionMatrix{2,5}=confusionMatrix{2,5}+1;
        end
        if R(2) == max(R)
            confusionMatrix{3,5}=confusionMatrix{3,5}+1;
        end
        if R(3) == max(R)
            confusionMatrix{4,5}=confusionMatrix{4,5}+1;
        end
        if R(4) == max(R)
            confusionMatrix{5,5}=confusionMatrix{5,5}+1;
        end
    end
    for j = 3 : 1 : 102
        signal = audioread(rockArchives{j});
        inputRolloff = mirgetdata(mirrolloff(miraudio(signal),'frame'));
        inputRolloff(isnan(inputRolloff))=[];
        inputRolloffMean = mean(nonzeros(inputRolloff));
        inputRolloffStd = std(nonzeros(inputRolloff));
        inputVector = [ mean(mean(nonzeros(mirgetdata(mirtonalcentroid(miraudio(signal),'frame'))))) std(std(nonzeros(mirgetdata(mirtonalcentroid(miraudio(signal),'frame'))))) inputRolloffMean inputRolloffStd mean(nonzeros(mirgetdata(mirflux(miraudio(signal),'frame')))) std(nonzeros(mirgetdata(mirflux(miraudio(signal),'frame')))) mean(nonzeros(mirgetdata(mirzerocross(miraudio(signal),'frame')))) std(nonzeros(mirgetdata(mirzerocross(miraudio(signal),'frame')))) mean(nonzeros(mirgetdata(mirlowenergy(miraudio(signal))))) ];
        for i = 1 : 1 : 4
            R(i) =  mean(mean(corrcoef(inputVector, genreMatrix(i,:))));
        end
        if R(1) == max(R)
            confusionMatrix{2,2}=confusionMatrix{2,2}+1;
        end
        if R(2) == max(R)
            confusionMatrix{3,2}=confusionMatrix{3,2}+1;
        end
        if R(3) == max(R)
            confusionMatrix{4,2}=confusionMatrix{4,2}+1;
        end
        if R(4) == max(R)
            confusionMatrix{5,2}=confusionMatrix{5,2}+1;
        end
    end
    writecell(confusionMatrix, 'confusionMatrix.txt');    
            
    
    