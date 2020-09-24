## Model Used:



## Training of Model:

The model has been trained in 2 Phases:
**Phase 1:** Only the new dense layers added on top of the base model are trained and the base model's layers
             remain frozen. This makes the output of the CNN convolutions remain stable and allows the dense
             layers to learn to classify the extracted features to classes.
**Phase 2:** Here we additionally fine tune the the entire model to further increase the predictive accuracy
             of the network. A lower learning rate is used to prevent too drastic changes to the feature extracters.
             
If the full CNN would be trained immediately, i.e. skipping phase 1, the completely untrained dense layers would initially create close-to-random predictions leading to a high loss. This loss would then be back-propagated through the whole CNN and likely “break” the already well-trained feature detectors.

## Techniques Implemented:



## Dataset Used:
Skin Cancer MNIST: HAM10000



