%This file contains a description of the attached genre recognition software. The software has 
%three functions:  genreDefiner.m, classifier.m, and confusionMatrixGenerator.m. The latter two
%implementations require genreDefiner to have been run first, so, appropriately, it will be 
%described first. genreDefiner begins by reading paths to create a structure containing file
%names for all musical samples that will be used to define the genre. Each structure should 
%contain sound files that a human classified to be a particular genre. There should be multiple 
%paths and genres so the code has vectors to compare. The code can take in as many sound 
%files as necessary, though it must be considered that the usage of the MIR toolbox creates an 
%incredibly long run time for a large amount of samples. When running the code with 20 
%samples as opposed to 100, the average components were different, though similar enough to 
%not have a noticeable difference on the outcome. Each group of sound files has the following 
%musical surface features calculated: mean tonal centroid, std tonal centroid, mean rolloff, std 
%rolloff, mean flux, std flux, mean zero crossing, std zero crossing, and low energy. A lack of 
%rhythm features caused some disappointing confusion between genres (classical and metal ), though 
%every genre tested had a significantly higher classification accuracy than the statistically 
%expected 25% (4 genres tested with 100 samples each). When calculating the rolloff features, 
%some samples produced NaN, so those samples were disregarded. Sample components of zero were also 
%disregarded, as it would be highly unlikely for any of the calculated components to be exactly 
%zero. The code constructs a matrix, with each row representing an array of musical surface 
%features for their respective genres.  Each sample's surface features were averaged to find a 
%number representative of that genre's component. This was done while constructing the 
%function with the mean function. After creating the genre matrix, it is written to a .txt file so it 
%can be used for the other two functions. classifier.m serves to classify a singular input signal 
%to one of the user defined genres. All of the same surface features are put into a vector, and 
%the correlation coefficient is measured between the input signal and each row of the genre 
%matrix. The corrcoef function produces a matrix of four numbers, so the program calculates 
%the mean of the matrix. Whichever row in the matrix computes the highest mean corrcoef 
%corresponds to the classification, and the code displays the genre. It must be noted that the 
%code is currently designed for rock, classical, metal, and pop, and that what text is displayed 
%would have to be changed for different genres. The confusion matrix imports a library of 
%sound files and runs each file through the classifier code (it is written out again in the 
%confusion matrix code to make it easier to see what's being done, though classifier.m could 
%just be used to shorten the length of confusionMatrixGenerator.m significantly. The confusion 
%matrix contains the correct labels in cells {1,2}-{1,5}, and the code’s classification in cells 
%{2,1}-{5,1}. The diagonal contains the amount of correct classifications (if the code runs 
%through exactly 100 files, it will also indicate the percentage). In using rock, pop, classical, and 
%metal, the matrix contained respective classification accuracies of 34, 63, 43, and 84. Metal 
%was the most often misclassification, as well as the most accurate for its own genre. This 
%seems to have a strong correlation with a lack of beat detection. Another thing that must be 
%noted is that the mean rolloff and std rolloff were unusually high in the input vectors, which 
%was perplexing as the same thing was being calculated in the definer code and giving different 
%numbers for the same samples. Through fixing the problems with rolloff and beat detection, 
%this code has the potential to be an incredibly useful tool for genre classification. This could 
%work incredibly well for defining subgenres, as it would be able to define those slight 
%differences in components that would change the classification of subgenre. More work has to 
%be done to make this implementable, but the idea is incredibly important with the biggest 
%problem in genre classification being the ambiguity of genre components.
