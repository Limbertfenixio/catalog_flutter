import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var firstNumber = "".obs;
  var secondNumber = "".obs;
  var mathResult = "0".obs;
  var operation = "".obs;

  void addNumber(String value) {
    if (mathResult.value == '0') {
      mathResult.value = value;
      return;
    }

    if (mathResult.value == '-0') {
      mathResult.value = "-" + value;
      return;
    }

    if (mathResult.value.startsWith('0') &&
        value == "0" &&
        mathResult.value.length <= 1) {
      return;
    }

    if (mathResult.value.startsWith('-0') &&
        value == "0" &&
        mathResult.value.length <= 2) {
      return;
    }

    mathResult.value = mathResult.value + value;
  }

  void resetAll() {
    firstNumber.value = "";
    secondNumber.value = "";
    mathResult.value = "0";
    operation.value = "";
  }

  void changePositiveNegative() {
    if (mathResult.value.startsWith("-")) {
      print("que a pasao");
      mathResult.value = mathResult.value.replaceAll("-", "");
    } else {
      mathResult.value = "-" + mathResult.value;
    }
  }

  void deleteLastDigit() {
    if (mathResult.value.length == 1) {
      mathResult.value = "0";
      return;
    }

    if (mathResult.value.startsWith("-") && mathResult.value.length == 2) {
      mathResult.value = "0";
      return;
    }

    mathResult.value =
        mathResult.value.substring(0, mathResult.value.length - 1);
  }

  void setOperations(String typeOperation) {
    if (mathResult.value == "0") {
      return;
    }

    firstNumber.value = mathResult.value;
    operation.value = typeOperation;
    secondNumber.value = "";
    mathResult.value = "0";
  }

  void resultOperation() {
    if (mathResult.value == "0" && operation.value == "/") {
      return;
    }

    if (firstNumber.value == "") {
      return;
    }

    secondNumber.value = mathResult.value;
    mathResult.value = "";

    var num1 = double.parse(firstNumber.value);
    var num2 = double.parse(secondNumber.value);

    switch (operation.value) {
      case "+":
        mathResult.value = (num1 + num2).toString();
        break;
      case "-":
        mathResult.value = (num1 - num2).toString();
        break;
      case "*":
        mathResult.value = (num1 * num2).toString();
        break;
      case "/":
        mathResult.value = (num1 / num2).toString();
        break;

      case "%":
        mathResult.value = (num1 * num2 / 100).toString();
        break;
    }

    if (mathResult.value.endsWith(".0")) {
      mathResult.value =
          mathResult.value.substring(0, mathResult.value.length - 2);
    }
  }

  addDotDecimal() {
    if (mathResult.contains(".")) {
      return;
    }

    mathResult.value = mathResult.value + ".";
  }
}
