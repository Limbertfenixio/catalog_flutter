import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:widget_catalog/src/controllers/calculator_controller.dart';
import 'package:widget_catalog/src/widgets/calculator_widgets/calc_button_widget.dart';

class GetxMainPage extends StatelessWidget {
  const GetxMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calculatorCtrl = Get.put(CalculatorController());

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Pagina 1 GetX"),
      ),
      body: ScreenUtilInit(
        builder: () => BodyGetX(calculatorCtrl: calculatorCtrl),
      ),
    );
  }
}

class BodyGetX extends StatelessWidget {
  const BodyGetX({
    Key? key,
    required this.calculatorCtrl,
  }) : super(key: key);

  final CalculatorController calculatorCtrl;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                LabelOperationsWidget(
                  text: "${calculatorCtrl.firstNumber}",
                  fontSize: 30,
                ),
                LabelOperationsWidget(
                  text: "${calculatorCtrl.operation}",
                  fontSize: 30,
                ),
                LabelOperationsWidget(
                  text: "${calculatorCtrl.secondNumber}",
                  fontSize: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 2.0,
                  color: Colors.white.withOpacity(0.4),
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                LabelOperationsWidget(
                  text: "${calculatorCtrl.mathResult}",
                  fontSize: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButtonWidget(
                      text: "AC",
                      bgColor: Color(0xffA5A5A5),
                      onPressed: () {
                        calculatorCtrl.resetAll();
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "+/-",
                      bgColor: Color(0xffA5A5A5),
                      onPressed: () {
                        calculatorCtrl.changePositiveNegative();
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "DEL",
                      bgColor: Color(0xffA5A5A5),
                      onPressed: () {
                        calculatorCtrl.deleteLastDigit();
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "/",
                      bgColor: Color(0xffF0A23B),
                      onPressed: () {
                        calculatorCtrl.setOperations("/");
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButtonWidget(
                      text: "7",
                      onPressed: () {
                        calculatorCtrl.addNumber("7");
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "8",
                      onPressed: () {
                        calculatorCtrl.addNumber("8");
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "9",
                      onPressed: () {
                        calculatorCtrl.addNumber("9");
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "*",
                      bgColor: Color(0xffF0A23B),
                      onPressed: () {
                        calculatorCtrl.setOperations("*");
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButtonWidget(
                      text: "4",
                      onPressed: () {
                        calculatorCtrl.addNumber("4");
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "5",
                      onPressed: () {
                        calculatorCtrl.addNumber("5");
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "6",
                      onPressed: () {
                        calculatorCtrl.addNumber("6");
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "-",
                      bgColor: Color(0xffF0A23B),
                      onPressed: () {
                        calculatorCtrl.setOperations("-");
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButtonWidget(
                      text: "1",
                      onPressed: () {
                        calculatorCtrl.addNumber("1");
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "2",
                      onPressed: () {
                        calculatorCtrl.addNumber("2");
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "3",
                      onPressed: () {
                        calculatorCtrl.addNumber("3");
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "+",
                      bgColor: Color(0xffF0A23B),
                      onPressed: () {
                        calculatorCtrl.setOperations("+");
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButtonWidget(
                      text: "%",
                      onPressed: () {
                        calculatorCtrl.setOperations("%");
                        ;
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "0",
                      onPressed: () {
                        calculatorCtrl.addNumber("0");
                      },
                    ),
                    CalculatorButtonWidget(
                      text: ".",
                      onPressed: () {
                        calculatorCtrl.addDotDecimal();
                      },
                    ),
                    CalculatorButtonWidget(
                      text: "=",
                      bgColor: Color(0xffF0A23B),
                      onPressed: () {
                        calculatorCtrl.resultOperation();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LabelOperationsWidget extends StatelessWidget {
  final String text;
  final double fontSize;

  const LabelOperationsWidget({
    Key? key,
    required this.text,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, color: Colors.grey),
        ),
      ),
    );
  }
}
