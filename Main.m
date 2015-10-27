%% PRE
% Import the eye image
file='iris1.bmp';
img = imread(file);

% Set the parameters
yPosPupil = 80;
xPosPupil = 80;
rPupil = 60;
yPosIris = 100;
xPosIris = yPosIris;
rIris = 10;

%% NORMAL MODE
% Execute the normalization
image = Rubber_Sheet( img, xPosPupil, yPosPupil, rPupil , xPosIris , yPosIris , rIris );

%% NORMAL MODE
% Execute the normalization
% image = rubberSheetNormalisation( img, xPosPupil, yPosPupil, rPupil , xPosIris , yPosIris , rIris , 'DebugMode', 1);

%% Show the result
loc = 'Rubber Sheet/';
loc = strcat(loc,file);
imwrite(image/max(image(:)),loc,'bmp');
