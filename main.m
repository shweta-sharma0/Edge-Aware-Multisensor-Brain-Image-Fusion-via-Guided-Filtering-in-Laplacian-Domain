clear all;
close all;
clc;

img1 = im2double(imread("Images\5(A).png"));
img2 = im2double(imread("Images\5(B).png"));

% Base Layers extracted using Guided Filter
base_layer1 = imguidedfilter(img1);
base_layer2 = imguidedfilter(img2);

% Detail Layer
detail_layer1 = (img1 - base_layer1);
detail_layer2 = (img2 - base_layer2);

% Compute Laplacian Energy Maps
h = fspecial('laplacian', 0);  % Laplacian kernel
L1 = imfilter(detail_layer1, h, 'replicate');  
L2 = imfilter(detail_layer2, h, 'replicate');

% Compute Weights Based on Laplacian Energy
w1 = abs(L1) ./ (abs(L1) + abs(L2) + eps);  % Normalize weights
w2 = 1 - w1;

% Fuse Detail Layers Using Weights
Fused_Detail = 5*(w1 .* detail_layer1 + w2 .* detail_layer2);

%Fused Base Layers
Fused_Base = (base_layer1+base_layer2)/2;

Final_Image = Fused_Base + Fused_Detail;

figure, imshow(img1, []), title("Image 1");
figure, imshow(img2, []), title("Image 2");
%figure, imshow(base_layer1), title("Base Layer 1");
%figure, imshow(base_layer2), title("Base Layer 2");
%figure, imshow(detail_layer1*15), title("Detail Layer 1");
%figure, imshow(detail_layer2*15), title("Detail Layer 2");
%figure, imshow(Fused_Base), title("Fused Base");
%figure, imshow(Fused_Detail*5), title("Fused Detail");
figure, imshow(Final_Image);


