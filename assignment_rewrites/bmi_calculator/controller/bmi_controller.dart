import 'dart:html';
import '../model/bmi.dart';
import '../view/bmi_view.dart';

/**
 * This class is for application logic
 */
class BMIController {
  BMIView? view = null;
  BMI? bmi = null;
  BMIController() {
    this.view = new BMIView();
    view!.submitButton.onClick.listen(this.submit);
    view!.clearButton.onClick.listen(this.clear);
  }
  /**
   * Submit button press
   */
  void submit(Event e) {
    this.bmi = new BMI(
      double.parse(this.view!.height.value ?? "0"),
      double.parse(this.view!.weight.value ?? "0"),
    );
    clear(e);
    this.view!.displayArea.value = this.bmi.toString();
  }

  /**
   * Clear's the view
   */
  void clear(Event e) {
    this.view!.height.value = "";
    this.view!.weight.value = "";
    this.view!.displayArea.value = "";
  }
}
