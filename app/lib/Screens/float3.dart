import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
import 'package:finalskincancerdetector/Screens/classifier3.dart';

class ClassifierFloat3 extends Classifier3{
  ClassifierFloat3({int numThreads}) : super(numThreads: numThreads);

  @override
  String get modelName => 'quantized_pruned_model_melanoma.tflite';

  @override
  NormalizeOp get preProcessNormalizeOp => NormalizeOp(127.5, 127.5);

  @override
  NormalizeOp get postProcessNormalizeOp => NormalizeOp(0, 1);
}