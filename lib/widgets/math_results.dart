import 'package:calculadora/controllers/claculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets.dart';

class MathResults extends StatelessWidget {
  MathResults({super.key});

  final calculatorCtrl = Get.find<ClaculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SubResult(text: '${calculatorCtrl.firstNumber}'),
          SubResult(text: '${calculatorCtrl.operation}'),
          SubResult(text: '${calculatorCtrl.secondNumber}'),
          const LineSeparator(),
          MainResultText(text: '${calculatorCtrl.mathResult}'),
        ],
      ),
    );
  }
}
