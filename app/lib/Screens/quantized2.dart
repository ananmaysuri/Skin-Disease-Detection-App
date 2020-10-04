import 'package:finalskincancerdetector/Screens/classifier1.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

import 'classifier2.dart';

class ClassifierQuant extends Classifier2 {
  ClassifierQuant({int numThreads: 1}) : super(numThreads: numThreads);

  @override
  String get modelName => 'cancer_quant_tflite_model.tflite';

  @override
  NormalizeOp get preProcessNormalizeOp => NormalizeOp(0, 1);

  @override
  NormalizeOp get postProcessNormalizeOp => NormalizeOp(0, 255);
}