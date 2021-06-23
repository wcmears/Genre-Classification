function genreDefiner
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
    for i = 3 : 1 : 10
      metalCentroidMean(1,i) = mean(mean(mirgetdata(mirtonalcentroid(miraudio(metalArchives(i)),'frame'))));
      metalCentroidStd(1,i) = std(std(mirgetdata(mirtonalcentroid(miraudio(metalArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : 10
      metalrolloffMean(1,i) = mean(nonzeros(mirgetdata(mirrolloff(miraudio(metalArchives(i)),'frame'))));
      metalrolloffStd(1,i) = std(nonzeros(mirgetdata(mirrolloff(miraudio(metalArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : 10
      metalfluxMean(1,i) = mean(mirgetdata(mirflux(miraudio(metalArchives(i)),'frame')));
      metalfluxStd(1,i) = std(mirgetdata(mirflux(miraudio(metalArchives(i)),'frame')));
    end 
    for i = 3 : 1 : 10
      metalzerocrossMean(1,i) = mean(mirgetdata(mirzerocross(miraudio(metalArchives(i)),'frame')));
      metalzerocrossStd(1,i) = std(mirgetdata(mirzerocross(miraudio(metalArchives(i)),'frame')));
    end 
    for i = 3 : 1 : 10
      metallowenergy(1,i) = mirgetdata(mirlowenergy(miraudio(metalArchives(i))));
    end 
    for i = 3 : 1 : 10
      popCentroidMean(1,i) = mean(mean(mirgetdata(mirtonalcentroid(miraudio(popArchives(i)),'frame'))));
      popCentroidStd(1,i) = std(std(mirgetdata(mirtonalcentroid(miraudio(popArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : 10
      poprolloffMean(1,i) = mean(nonzeros(mirgetdata(mirrolloff(miraudio(popArchives(i)),'frame'))));
      poprolloffStd(1,i) = std(nonzeros(mirgetdata(mirrolloff(miraudio(popArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : 10
      popfluxMean(1,i) = mean(mirgetdata(mirflux(miraudio(popArchives(i)),'frame')));
      popfluxStd(1,i) = std(mirgetdata(mirflux(miraudio(popArchives(i)),'frame')));
    end 
    for i = 3 : 1 : 10
      popzerocrossMean(1,i) = mean(mirgetdata(mirzerocross(miraudio(popArchives(i)),'frame')));
      popzerocrossStd(1,i) = std(mirgetdata(mirzerocross(miraudio(popArchives(i)),'frame')));
    end 
    for i = 3 : 1 : 10
      poplowenergy(1,i) = mirgetdata(mirlowenergy(miraudio(popArchives(i)),'frame'));
    end 
    for i = 3 : 1 : 10
      classicalCentroidMean(1,i) = mean(mean(mirgetdata(mirtonalcentroid(miraudio(classicalArchives(i)),'frame'))));
      classicalCentroidStd(1,i) = std(std(mirgetdata(mirtonalcentroid(miraudio(classicalArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : 10
      classicalrolloffMean(1,i) = mean(nonzeros(mirgetdata(mirrolloff(miraudio(classicalArchives(i)),'frame'))));
      classicalrolloffStd(1,i) = std(nonzeros(mirgetdata(mirrolloff(miraudio(classicalArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : 10
      classicalfluxMean(1,i) = mean(mirgetdata(mirflux(miraudio(classicalArchives(i)),'frame')));
      classicalfluxStd(1,i) = std(mirgetdata(mirflux(miraudio(classicalArchives(i)),'frame')));
    end 
    for i = 3 : 1 : 10
      classicalzerocrossMean(1,i) = mean(mirgetdata(mirzerocross(miraudio(classicalArchives(i)),'frame')));
      classicalzerocrossStd(1,i) = std(mirgetdata(mirzerocross(miraudio(classicalArchives(i)),'frame')));
    end 
    for i = 3 : 1 : 10
      classicallowenergy(1,i) = mirgetdata(mirlowenergy(miraudio(classicalArchives(i))));
    end 
    for i = 3 : 1 : 10
      rockCentroidMean(1,i) = mean(mean(mirgetdata(mirtonalcentroid(miraudio(rockArchives(i)),'frame'))));
      rockCentroidStd(1,i) = std(std(mirgetdata(mirtonalcentroid(miraudio(rockArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : 10
      rockrolloffMean(1,i) = mean(nonzeros(mirgetdata(mirrolloff(miraudio(rockArchives(i)),'frame'))));
      rockrolloffStd(1,i) = std(nonzeros(mirgetdata(mirrolloff(miraudio(rockArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : 10
      rockfluxMean(1,i) = mean(mirgetdata(mirflux(miraudio(rockArchives(i)),'frame')));
      rockfluxStd(1,i) = std(mirgetdata(mirflux(miraudio(rockArchives(i)),'frame')));
    end 
    for i = 3 : 1 : 10
      rockzerocrossMean(1,i) = mean(mirgetdata(mirzerocross(miraudio(rockArchives(i)),'frame')));
      rockzerocrossStd(1,i) = std(mirgetdata(mirzerocross(miraudio(rockArchives(i)),'frame')));
    end 
    for i = 3 : 1 : 10
      rocklowenergy(1,i) = mirgetdata(mirlowenergy(miraudio(rockArchives(i))));
    end 
    %Eliminate NaN's from rolloff
    %--------------------------------------------------------------------
    rockrolloffMean(isnan(rockrolloffMean))=[];
    rockrolloffStd(isnan(rockrolloffStd))=[];
    metalrolloffMean(isnan(metalrolloffMean))=[];
    metalrolloffStd(isnan(metalrolloffStd))=[];
    classicalrolloffMean(isnan(classicalrolloffMean))=[];
    classicalrolloffStd(isnan(classicalrolloffStd))=[];
    poprolloffMean(isnan(poprolloffMean))=[];
    poprolloffStd(isnan(poprolloffStd))=[];
    %Construct and write genre matrix
    %--------------------------------------------------------------------
    genreMatrix = [ mean(nonzeros(rockCentroidMean)) mean(nonzeros(rockCentroidStd)) mean(nonzeros(rockrolloffMean)) mean(nonzeros(rockrolloffStd)) mean(nonzeros(rockfluxMean)) mean(nonzeros(rockfluxStd)) mean(nonzeros(rockzerocrossMean)) mean(nonzeros(rockzerocrossStd)) mean(nonzeros(rocklowenergy)) ; mean(nonzeros(popCentroidMean)) mean(nonzeros(popCentroidStd)) mean(nonzeros(poprolloffMean)) mean(nonzeros(poprolloffStd)) mean(nonzeros(popfluxMean)) mean(nonzeros(popfluxStd)) mean(nonzeros(popzerocrossMean)) mean(nonzeros(popzerocrossStd)) mean(nonzeros(poplowenergy)) ; mean(nonzeros(classicalCentroidMean)) mean(nonzeros(classicalCentroidStd)) mean(nonzeros(classicalrolloffMean)) mean(nonzeros(classicalrolloffStd)) mean(nonzeros(classicalfluxMean)) mean(nonzeros(classicalfluxStd)) mean(nonzeros(classicalzerocrossMean)) mean(nonzeros(classicalzerocrossStd))  mean(nonzeros(classicallowenergy)); mean(nonzeros(metalCentroidMean)) mean(nonzeros(metalCentroidStd)) mean(nonzeros(metalrolloffMean)) mean(nonzeros(metalrolloffStd)) mean(nonzeros(metalfluxMean)) mean(nonzeros(metalfluxStd)) mean(nonzeros(metalzerocrossMean)) mean(nonzeros(metalzerocrossStd))  mean(nonzeros(metallowenergy)) ];
    writematrix(genreMatrix, 'genreMatrix.txt');