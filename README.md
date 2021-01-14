# Derman : A Skin Cancer Detection App

<p align="center">
  <img src="https://user-images.githubusercontent.com/42714939/95019503-60d53500-0683-11eb-88a7-1aa51aa58d06.png" width="400" title="image">
</p>

We aim to provide a complete user experience with integrated medication and doctor-appointment APIs as well as awareness surrounding Skin cancer and allergies. Using 3 state-of-the-art Deep Learning Classification models we try to predict with considerably high accuracy if you are suffering from Melanoma (which is the most fatal type of skin cancer) or any other type of cancer (basal cell carcinoma, and 7 other types), or if you are suffering from an allergy (using a separate model). With features like, embedded videos, remedies, medicine browsing, Find a Doctor we hope to be a one-stop solution for the user's dermatological problems.

# Models:

We have used 3 models for 3-layered multipurpose testing, namely, for detecting Melanoma(the most fatal type of Skin Cancer), the given types of Skin Cancers:

1. Melanocytic nevi

2. Benign keratosis-like lesions

3. Basal cell carcinoma

4. Actinic keratoses

5. Vascular lesions

6. Dermatofibroma

And also the given types of allergies and skin diseases:

1. Acne and Rosacea

2. Cellulitis, Impetigo, and other Bacterial Infections

3. Eczema and Atopic Dermatitis 

4. Nail Fungus and other Nail Disease

5. Application/Deployment:

To deploy our models we have seamlessly integrated Tensorflow models using TFLite framework into a Flutter Android App, where we have used multiple APIs to create an engaging user-experience and provided with testing/educative as well as preventive and medical aid features. The salient features of our Application is listed as follows:

1. Carousel to showcase App features and provide an overview

2. User input form to check symptoms and select model for prediction

3. 3-types of cutting edge deep learning prediction model for reliable results

4. Disease information cards to spread awareness and knowledge

5. Contact Doctor through Email and Whatsapp APIs

6. Search for Local Hospitals using Google Map integration

7. Real-time database for appointment scheduling

# Training Overview:

The three models were trained on open source datasets, some using custom or transfer learning architectures on Kaggle Cloud GPUs. For specific training and model architecture refer to the training notebooks in Models/. The data pre-processing, scraping, augmentation techniques are also described in these notebooks. Models were trained using Tensorflow 2.0 deep learning framework, and were exported in .tflite (Tensorflow lite) format. For post-processing we have tested the models, then applied quantisation, pruning to clip inconsequential weights in the model an reduce it's size for deployment. The pre and post quantisation test results can be found in the model training notebooks as well. 

# Files in Repository:

1. Model Training, Data Preprocessing and Conversion to TFLite is shown in Skin-Cancer-Detection-App/Models/.. as Jupyter Notebooks. Data is taken from Kaggle for Melanoma Model and Cancer Model. For Allergy Model a custom scraper is implemented for obtaining data, which is shown in, Skin-Cancer-Detection-App/Models/allergy-model/..

2. Flutter app source code is contained in Skin-Cancer-Detection-App/App/..

3. Models in .tflite formats and their labels are in App/assets/

# Git LFS

To clone and use this repository, you'll need Git Large File Storage (LFS).

Our Developer Guide explains how to set up Git LFS for LSST development.

# Install Instructions:

*Requirements to run source code:*

1. Flutter SDK and Android Studio or any other emulator to run app
2. Get packages by going to source code directory and run command: flutter pub get
3. To check is Flutter is running and emulator is connected: flutter doctor
4. To run app: flutter run

*Additional Steps:*

1. Obtain your SHA-keys and google-services.json after adding project name on Firebase Console
2. Add the files and ID in the downloaded code, this configures google login on homepage
3. Alternatively you could remove login code (dart files)
4. To make Google maps integration work you need to have a Google Cloud account

How to run our App? Just download the apk and install it. Alternatively you can run the source code in Android Studio, by connecting an AVD and using your own google services login. To run the app in the emulator go to app directory and execute: flutter run. Flutter and Dart SDK required.

# Accomplishments:

Solution was partly inspired by SIIM-ISIC Melanoma Detection Challenge on Kaggle, in which we had won rank 101 of 3314 teams and silver medal. The app was submitted to Hacker-Earth's AGBI Health-tech grand challenge, organised by Virtusa technologies, Niti Aayog, and Mehta group of hospitals. Submission was awarded 2nd prize out of 100 shortlisted ideas and 1200+ registered teams, and an incubation offer. 
