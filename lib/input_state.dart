import 'package:flutter/cupertino.dart';

class InputState {
  bool doesTheUserPressBackSpace = false;
  bool isCopyPaste = false;
  int counter = 0;

  void updateInputState(TextEditingValue newValue, TextEditingValue oldValue) {
    counter++;
    doesTheUserPressBackSpace = oldValue.text.length > newValue.text.length;
    isCopyPaste = newValue.text.length >= 2 && counter <= 1 && (!doesTheUserPressBackSpace);
  }
}
