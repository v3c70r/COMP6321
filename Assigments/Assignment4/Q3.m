%Call this function to run Q3

pic = load('hw4-image.txt');
initCent = [255 255 255; 255 0 0; 128 0 0; 0 255 0; 0 128 0; 0 0 255; 0 0 128; 0 0 0];
newPic = kMeans(8, pic, initCent);


