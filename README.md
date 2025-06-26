# Edge-Aware-Multisensor-Brain-Image-Fusion-via-Guided-Filtering-in-Laplacian-Domain

This repository contains the MATLAB implementation of an edge-aware multisensor brain image fusion technique based on guided filtering and Laplacian energy-based weighting. The proposed method decomposes source images into base and detail layers using guided filtering, computes Laplacian energy maps of the detail layers, and fuses them using adaptive weights. The fused image combines enhanced structural details and improved contrast suitable for multimodal medical image analysis.

📂 Repository Contents
- main.m : Main MATLAB script implementing the image fusion framework.
- Images/ : Folder containing sample source images used for testing.
- README.md : Description of the repository and usage instructions.

📊 Method Overview
- Decompose source images into base and detail layers using guided filtering.
- Compute Laplacian energy maps of detail layers to estimate edge and texture strength.
- Fuse detail layers using normalized energy-based weights.
- Average base layers for low-frequency content fusion.
- Combine fused base and detail layers to reconstruct the final fused image.

📷 Sample Results
Sample input images and the corresponding fused result can be visualized by running the script.

📦 Requirements
- MATLAB R2016a or later  
- Image Processing Toolbox

📚 Public Datasets Used

The source images used in this study are obtained from publicly available multimodal medical image fusion datasets. You can access these datasets from the following sources:

- https://github.com/dawachyophel/medical-fusion/tree/main/MyDataset
- https://github.com/Imagingscience/Image-Fusion-Image-Denoising-Image-Enhancement-/commits?author=Imagingscience

