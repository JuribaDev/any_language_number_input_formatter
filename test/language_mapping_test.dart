import 'package:any_language_number_input_formatter/language_mapping.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late LanguageMapping languageMapping;
  setUp(() {
    languageMapping = LanguageMapping();
  });

  /// Grouping tests related under [LanguageMapping] Tests
  test('Check the default values in LanguageMapping in the same order', () {
    expect(languageMapping.languages['Hindi'], languages['Hindi']);
    expect(languageMapping.languages['Bengali'], languages['Bengali']);
    expect(languageMapping.languages['Chinese/Japanese'], languages['Chinese/Japanese']);
    expect(languageMapping.languages['Gujarati'], languages['Gujarati']);
    expect(languageMapping.languages['Gurmukhi(Punjabi)'], languages['Gurmukhi(Punjabi)']);
    expect(languageMapping.languages['Hindi(Devanagari)'], languages['Hindi(Devanagari)']);
    expect(languageMapping.languages['Kannada'], languages['Kannada']);
    expect(languageMapping.languages['Malayalam'], languages['Malayalam']);
    expect(languageMapping.languages['Hindi(Devanagari)'], languages['Hindi(Devanagari)']);
    expect(languageMapping.languages['Oriya'], languages['Oriya']);
    expect(languageMapping.languages['Persian(Farsi)'], languages['Persian(Farsi)']);
    expect(languageMapping.languages['Tamil'], languages['Tamil']);
    expect(languageMapping.languages['Telugu'], languages['Telugu']);
    expect(languageMapping.languages['Thai'], languages['Thai']);
    expect(languageMapping.languages['Urdu'], languages['Urdu']);
  });
}

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
