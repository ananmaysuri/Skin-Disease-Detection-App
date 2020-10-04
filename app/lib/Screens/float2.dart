import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
import 'package:finalskincancerdetector/Screens/classifier2.dart';

class ClassifierFloat2 extends Classifier2{
  ClassifierFloat2({int numThreads}) : super(numThreads: numThreads);

  @override
  String get modelName => 'quantized_pruned_model_cancer.tflite';

  @override
  NormalizeOp get preProcessNormalizeOp => NormalizeOp(127.5, 127.5);

  @override
  NormalizeOp get postProcessNormalizeOp => NormalizeOp(0, 1);
}