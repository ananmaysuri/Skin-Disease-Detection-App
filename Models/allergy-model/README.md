## Dataset Used:

#### DermNet:- 
* DermNet New Zealand is an established leader in the world of dermatology. 
* They have hundreds of thousands of clinical images. 
* Unfortunately, out of them only around 20,000 images is publicly available on their website. 
* http://www.dermnet.com/dermatology-pictures-skin-disease-pictures/ 

#### Scraper:- 
* We made a scraper which scrapes images of diseases from DermNet's website. 
* The user just has to specify which diseases to select out of the 23 choices available on DermNet. 
* You can find the code for the scraper in scraper.py. 

## Model Used:

The Architecture Used is VGG16, which is illustrated in the diagram below:
<p align="center">
  <img src="https://user-images.githubusercontent.com/36783331/95022363-730b9f00-0694-11eb-9dde-40cc0152ad75.png" width="800" title="image">
</p>

## Training:

* Trained on just 4878 images having categories namely ‘Acne and Rosacea’,  ‘Eczema and Atopic Dermatitis’, ’Nail Fungus and other Nail diseases’, ‘Scabies Lyme disease and other Infestations and Bites’.
* Our Transfer Learning model comprises of a pre trained VGG16 model on the Imagenet dataset (14 million+ images) which acts as a feature extractor.
* We retrained the last 3 convolution layers of this model for fine tuning.
* Then we flattened out the extracted features.
* Finally we added the fully connected dense layers and train on our DermNet dataset.
* Our model gave a test set accuracy of 85% even with the dataset deficiencies.
