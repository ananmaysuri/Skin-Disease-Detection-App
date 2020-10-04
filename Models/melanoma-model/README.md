# Preprocessing Notebook: 

Contains Image Augmentation, train and test images displayed as well as all the preprocessing pipelines. The preprocessing techniques, 
such as coarse augmentation, rotation, zoom, shear, hair removal have been shown as images and compared with original dataset as mosaics.

# Model Training Notebook: 

Contains Training Hyperparameters, model specifics, conversion to TFlite from the datasets obtained in Preprocessing Notebook,
The code has been repeated so skip to model building to see the model build and usage. We have obtained a train AUC of 97.0 
and saved the model weight. The model trained is Effnet B5 and for reference Effnet B6 has also been trained. Pruning accuracy is 97-99, but
since the pruned model is large (120 and 160 MB) we have used quantisation and the new accuracy is 93 percent. This is essential for deploying in app
which does not support heavy models, but if possible the original model we can deploy later on Cloud Apps like AWS or Azure, to harness the original
accuracy of the model. This model is in the Models-TFLite Folder.

# Model Used:

Effnet B5 Architecture, Illustrated here:

<p align="center">
  <img src="https://user-images.githubusercontent.com/36783331/95022188-460abc80-0693-11eb-9b06-8172601e0398.png" width="500" title="image">
</p>


# Training of Model:

The model is trained over 32 epochs, using a pruning callback and learning rate scheduling. To import data we have used tf.data.Datasets to create transformed
images from the image transformation functions defined above, and stores in ds_train. Then Effnet is imported from its URL and fine-tuned. The weights are saved
and Pruning and Quantisation is carried out. There is a loss in accuracy but it is necessary to deploy models in the application. 

# Dataset Used:

1. SIIM-ISIC 2020 Data on Kaggle
2. ISIC 2019 Data - TFRecords on Kaggle
3. ISIC 2018 Data - TFRecords on Kaggle
4. ISIC 2017 Data - TFRecords on Kaggle
