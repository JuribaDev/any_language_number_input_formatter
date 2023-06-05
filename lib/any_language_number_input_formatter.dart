// Importing services package from flutter that allows us to use TextInputFormatter
import 'package:flutter/services.dart';

// A custom class AnyLanguageNumberInputFormatter is defined here that extends TextInputFormatter for custom text input handling
class AnyLanguageNumberInputFormatter extends TextInputFormatter {
  // This function will be triggered whenever there is an update in the Text Field or Text Form Field.
  // oldValue holds the previous value and newValue holds the latest value in the Text Field
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // Storing the new text value in a variable named formattedValue
    String formattedValue = newValue.text;

    // Keeping the new text selection after formatting
    final TextSelection newTextSelection = newValue.selection;

    // languages is a predefined Map where each key represents a language, and its value is a list of string numerals in that language
    languages.forEach((language, languagesNumbers) {
      // Iterating through all the numerals of a specific language
      for (int i = 0; i < languagesNumbers.length; i++) {
        // If the input text contains a numeral of a specific language
        if (newValue.text.contains(languagesNumbers[i])) {
          // The specific language numeral in the input text is replaced with its equivalent numeral in English
          formattedValue = newValue.text.replaceFirst(RegExp(languagesNumbers[i]), i.toString());
        }
      }
    });

    // The formatted value, with all non-English numerals replaced with English numerals, is returned along with the current selection
    return TextEditingValue(text: formattedValue, selection: newTextSelection);
  }
}

// A Map that maps the language to its corresponding list of numerals
const Map<String, List<String>> languages = {
  "Arabic": ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'],
  "Bengali": ['০', '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯'],
  "Chinese/Japanese": ['〇', '一', '二', '三', '四', '五', '六', '七', '八', '九'],
  "Gujarati": ['૦', '૧', '૨', '૩', '૪', '૫', '૬', '૭', '૮', '૯'],
  "Gurmukhi(Punjabi)": ['੦', '੧', '੨', '੩', '੪', '੫', '੬', '੭', '੮', '੯'],
  "Hindi(Devanagari)": ['०', '१', '२', '३', '४', '५', '६', '७', '८', '९'],
  "Kannada": ['೦', '೧', '೨', '೩', '೪', '೫', '೬', '೭', '೮', '೯'],
  "Malayalam": ['൦', '൧', '൨', '൩', '൪', '൫', '൬', '൭', '൮', '൯'],
  "Oriya": ['୦', '୧', '୨', '୩', '୪', '୫', '୬', '୭', '୮', '୯'],
  "Persian(Farsi)": ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'],
  "Tamil": ['௦', '௧', '௨', '௩', '௪', '௫', '௬', '௭', '௮', '௯'],
  "Telugu": ['౦', '౧', '౨', '౩', '౪', '౫', '౬', '౭', '౮', '౯'],
  "Thai": ['๐', '๑', '๒', '๓', '๔', '๕', '๖', '๗', '๘', '๙'],
  "Urdu": ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹']
};
