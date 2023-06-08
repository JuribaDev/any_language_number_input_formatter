class LanguageMapping {
  // A Map that maps the language to its corresponding list of numerals
  final Map<String, List<String>> languages = {
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

  String formatValue(String newValue, bool isCopyPaste) {
    String formattedValue = newValue;
    languages.forEach((language, languagesNumbers) {
      // Iterating through all the numerals of a specific language
      languagesNumbers.forEach((String num) {
        if (!isCopyPaste) {
          // If the input text contains a numeral of a specific language
          if (newValue.contains(num)) {
            // The specific language numeral in the input text is replaced with its equivalent numeral in English
            formattedValue = formattedValue.replaceFirst(num, languagesNumbers.indexOf(num).toString());
          }
        }
        formattedValue = formattedValue.replaceAll(num, languagesNumbers.indexOf(num).toString());
      });
    });
    return formattedValue;
  }
}
