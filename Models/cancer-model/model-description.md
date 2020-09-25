## Model Used:

ResNet50v2

## Training of Model:

The model has been trained in 2 Phases:

* **Phase 1:** Only the new dense layers added on top of the base model are trained and the base model's layers
             remain frozen. This makes the output of the CNN convolutions remain stable and allows the dense
             layers to learn to classify the extracted features to classes.
             
* **Phase 2:** Here we additionally fine tune the the entire model to further increase the predictive accuracy
             of the network. A lower learning rate is used to prevent too drastic changes to the feature extracters.
             
If the full CNN would be trained immediately, i.e. skipping phase 1, the completely untrained dense layers would initially create close-to-random predictions leading to a high loss. This loss would then be back-propagated through the whole CNN and likely “break” the already well-trained feature detectors.

The data was upsampled due to the imbalanced dataset. Data augmentation was tried but it resulted in lesser accuracy and was thus removed. The model was trained for 15 epochs for each phase with a batch size of 128. 

## Output Information:

The Original model gave an accuracy of 98% in the test dataset and was of the size 154 mb. The model had to be quantized to reduce the size in order to deploy it in the mobile app. The tflite model formed is 38.7 mb. The accuracy dropped to 93%, which is still a good enough accuracy.

## Dataset Used:
Skin Cancer MNIST: HAM10000



