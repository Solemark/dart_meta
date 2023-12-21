import 'dart:html';

/**
 * This class is for building the dart side JS widgets
 */
class BMIView {
  InputElement height = InputElement();
  InputElement weight = InputElement();
  ButtonElement submitButton = ButtonElement();
  ButtonElement clearButton = ButtonElement();
  TextAreaElement displayArea = TextAreaElement();

  BMIView() {
    this.height = querySelector("#height") as InputElement;
    this.weight = querySelector("#weight") as InputElement;
    this.submitButton = querySelector("#submit") as ButtonElement;
    this.clearButton = querySelector("#clear") as ButtonElement;
    this.displayArea = querySelector("#displayArea") as TextAreaElement;
  }
}
