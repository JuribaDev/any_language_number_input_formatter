// Importing services package from flutter that allows us to use TextInputFormatter
import 'package:any_language_number_input_formatter/input_state.dart';
import 'package:any_language_number_input_formatter/language_mapping.dart';
import 'package:flutter/services.dart';

// A custom class AnyLanguageNumberInputFormatter is defined here that extends TextInputFormatter for custom text input handling
class AnyLanguageNumberInputFormatter extends TextInputFormatter {


  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    InputState inputState = InputState();
    LanguageMapping languageMapping = LanguageMapping();
    inputState.updateInputState(newValue, oldValue);
    String formattedValue = languageMapping.formatValue(newValue.text, inputState.isCopyPaste);


    // Keeping the new text selection after formatting
    final TextSelection newTextSelection = newValue.selection;
    // languages is a predefined Map where each key represents a language, and its value is a list of string numerals in that language


    // The formatted value, with all non-English numerals replaced with English numerals, is returned along with the current selection
    return TextEditingValue(text: formattedValue, selection: newTextSelection);
  }
}
