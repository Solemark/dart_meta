import 'package:web/web.dart';

/**
 * This class is for building the dart side JS widgets
 */
class BMIView {
  HTMLInputElement height = HTMLInputElement();
  HTMLInputElement weight = HTMLInputElement();
  HTMLButtonElement submitButton = HTMLButtonElement();
  HTMLButtonElement clearButton = HTMLButtonElement();
  HTMLTextAreaElement displayArea = HTMLTextAreaElement();

  BMIView() {
    this.height = document.querySelector("#height") as HTMLInputElement;
    this.weight = document.querySelector("#weight") as HTMLInputElement;
    this.submitButton = document.querySelector("#submit") as HTMLButtonElement;
    this.clearButton = document.querySelector("#clear") as HTMLButtonElement;
    this.displayArea = document.querySelector("#displayArea") as HTMLTextAreaElement;
  }
}
