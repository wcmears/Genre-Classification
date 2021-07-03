function genreDefiner
  %Input source directories and define as cell, each directory contains songs that user defines to be the same genre
  %---------------------------------------------------------------------------------------------------------------------
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
  %iterate through directories of defined
  %----------------------------------------------------------------------------------------------------------------
    for i = 3 : 1 : len(metalArchives)
      metalCentroidMean(1,i) = mean(mean(mirgetdata(mirtonalcentroid(miraudio(metalArchives(i)),'frame'))));
      metalCentroidStd(1,i) = std(std(mirgetdata(mirtonalcentroid(miraudio(metalArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : len(metalArchives)
      metalrolloffMean(1,i) = mean(nonzeros(mirgetdata(mirrolloff(miraudio(metalArchives(i)),'frame'))));
      metalrolloffStd(1,i) = std(nonzeros(mirgetdata(mirrolloff(miraudio(metalArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : len(metalArchives)
      metalfluxMean(1,i) = mean(mirgetdata(mirflux(miraudio(metalArchives(i)),'frame')));
      metalfluxStd(1,i) = std(mirgetdata(mirflux(miraudio(metalArchives(i)),'frame')));
    end 
    for i = 3 : 1 : len(metalArchives)
      metalzerocrossMean(1,i) = mean(mirgetdata(mirzerocross(miraudio(metalArchives(i)),'frame')));
      metalzerocrossStd(1,i) = std(mirgetdata(mirzerocross(miraudio(metalArchives(i)),'frame')));
    end 
    for i = 3 : 1 : len(metalArchives)
      metallowenergy(1,i) = mirgetdata(mirlowenergy(miraudio(metalArchives(i))));
    end 
    for i = 3 : 1 : len(popArchives)
      popCentroidMean(1,i) = mean(mean(mirgetdata(mirtonalcentroid(miraudio(popArchives(i)),'frame'))));
      popCentroidStd(1,i) = std(std(mirgetdata(mirtonalcentroid(miraudio(popArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : len(popArchives)
      poprolloffMean(1,i) = mean(nonzeros(mirgetdata(mirrolloff(miraudio(popArchives(i)),'frame'))));
      poprolloffStd(1,i) = std(nonzeros(mirgetdata(mirrolloff(miraudio(popArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : len(popArchives)
      popfluxMean(1,i) = mean(mirgetdata(mirflux(miraudio(popArchives(i)),'frame')));
      popfluxStd(1,i) = std(mirgetdata(mirflux(miraudio(popArchives(i)),'frame')));
    end 
    for i = 3 : 1 : len(popArchives)
      popzerocrossMean(1,i) = mean(mirgetdata(mirzerocross(miraudio(popArchives(i)),'frame')));
      popzerocrossStd(1,i) = std(mirgetdata(mirzerocross(miraudio(popArchives(i)),'frame')));
    end 
    for i = 3 : 1 : len(popArchives)
      poplowenergy(1,i) = mirgetdata(mirlowenergy(miraudio(popArchives(i)),'frame'));
    end 
    for i = 3 : 1 : len(classicalArchives)
      classicalCentroidMean(1,i) = mean(mean(mirgetdata(mirtonalcentroid(miraudio(classicalArchives(i)),'frame'))));
      classicalCentroidStd(1,i) = std(std(mirgetdata(mirtonalcentroid(miraudio(classicalArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : len(classicalArchives)
      classicalrolloffMean(1,i) = mean(nonzeros(mirgetdata(mirrolloff(miraudio(classicalArchives(i)),'frame'))));
      classicalrolloffStd(1,i) = std(nonzeros(mirgetdata(mirrolloff(miraudio(classicalArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : len(classicalArchives)
      classicalfluxMean(1,i) = mean(mirgetdata(mirflux(miraudio(classicalArchives(i)),'frame')));
      classicalfluxStd(1,i) = std(mirgetdata(mirflux(miraudio(classicalArchives(i)),'frame')));
    end 
    for i = 3 : 1 : len(classicalArchives)
      classicalzerocrossMean(1,i) = mean(mirgetdata(mirzerocross(miraudio(classicalArchives(i)),'frame')));
      classicalzerocrossStd(1,i) = std(mirgetdata(mirzerocross(miraudio(classicalArchives(i)),'frame')));
    end 
    for i = 3 : 1 : len(classicalArchives)
      classicallowenergy(1,i) = mirgetdata(mirlowenergy(miraudio(classicalArchives(i))));
    end 
    for i = 3 : 1 : len(rockArchives)
      rockCentroidMean(1,i) = mean(mean(mirgetdata(mirtonalcentroid(miraudio(rockArchives(i)),'frame'))));
      rockCentroidStd(1,i) = std(std(mirgetdata(mirtonalcentroid(miraudio(rockArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : len(rockArchives)
      rockrolloffMean(1,i) = mean(nonzeros(mirgetdata(mirrolloff(miraudio(rockArchives(i)),'frame'))));
      rockrolloffStd(1,i) = std(nonzeros(mirgetdata(mirrolloff(miraudio(rockArchives(i)),'frame'))));
    end 
    for i = 3 : 1 : len(rockArchives)
      rockfluxMean(1,i) = mean(mirgetdata(mirflux(miraudio(rockArchives(i)),'frame')));
      rockfluxStd(1,i) = std(mirgetdata(mirflux(miraudio(rockArchives(i)),'frame')));
    end 
    for i = 3 : 1 : len(rockArchives)
      rockzerocrossMean(1,i) = mean(mirgetdata(mirzerocross(miraudio(rockArchives(i)),'frame')));
      rockzerocrossStd(1,i) = std(mirgetdata(mirzerocross(miraudio(rockArchives(i)),'frame')));
    end 
    for i = 3 : 1 : len(rockArchives)
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
