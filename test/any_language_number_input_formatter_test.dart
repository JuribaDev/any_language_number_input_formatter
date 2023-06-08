// Import Flutter's test package to get access to testing functions
// Import your custom TextInputFormatter class to be tested
import 'package:any_language_number_input_formatter/any_language_number_input_formatter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Declare your custom formatter
  late AnyLanguageNumberInputFormatter formatter;

  // This function runs before each individual test
  setUp(() {
    // Instantiate formatter before each test to ensure a clean slate
    formatter = AnyLanguageNumberInputFormatter();
  });

  // This function defines a test case
  test('should convert Indian numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Indian numeral '٥'
    TextEditingValue newValue = const TextEditingValue(text: '٠٥٣٣٠٩٣١٣٩');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Indian numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Indian numeral '٥' to the Arabic numeral '5'
    expect(formattedValue.text, '0533093139');
  });

  // This function defines a test case
  test('should convert Bengali numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Bengali numeral '৯'
    TextEditingValue newValue = const TextEditingValue(text: '৯');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Bengali numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Bengali numeral '৯' to the Arabic numeral '9'
    expect(formattedValue.text, '9');
  });

  // This function defines a test case
  test('should convert Chinese/Japanese numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Chinese/Japanese numeral '三'
    TextEditingValue newValue = const TextEditingValue(text: '三');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Chinese/Japanese numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Chinese/Japanese numeral '三' to the Arabic numeral '3'
    expect(formattedValue.text, '3');
  });

  // This function defines a test case
  test('should convert Gujarati numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Gujarati numeral '૪'
    TextEditingValue newValue = const TextEditingValue(text: '૪');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Gujarati numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Gujarati numeral '૪' to the Arabic numeral '4'
    expect(formattedValue.text, '4');
  });

  // This function defines a test case
  test('should convert Gurmukhi(Punjabi) numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Gurmukhi(Punjabi) numeral '੬'
    TextEditingValue newValue = const TextEditingValue(text: '੬');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Gurmukhi(Punjabi) numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Gurmukhi(Punjabi) numeral '੬' to the Arabic numeral '6'
    expect(formattedValue.text, '6');
  });

  // This function defines a test case
  test('should convert Hindi(Devanagari) numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Hindi(Devanagari) numeral '८'
    TextEditingValue newValue = const TextEditingValue(text: '८');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Hindi(Devanagari) numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Hindi(Devanagari) numeral '८' to the Arabic numeral '8'
    expect(formattedValue.text, '8');
  });

  // This function defines a test case
  test('should convert Kannada numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Kannada numeral '೯'
    TextEditingValue newValue = const TextEditingValue(text: '೯');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Kannada numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Kannada numeral '೯' to the Arabic numeral '9'
    expect(formattedValue.text, '9');
  });

  // This function defines a test case
  test('should convert Malayalam numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Malayalam numeral '൫'
    TextEditingValue newValue = const TextEditingValue(text: '൫');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Malayalam numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Malayalam numeral '൫' to the Arabic numeral '5'
    expect(formattedValue.text, '5');
  });

  // This function defines a test case
  test('should convert Oriya numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Oriya numeral '୫'
    TextEditingValue newValue = const TextEditingValue(text: '୫');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Oriya numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Oriya numeral '୫' to the Arabic numeral '5'
    expect(formattedValue.text, '5');
  });
  // This function defines a test case
  test('should convert Persian(Farsi) numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Persian(Farsi) numeral '۶'
    TextEditingValue newValue = const TextEditingValue(text: '۶');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Persian(Farsi) numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Persian(Farsi) numeral '۶' to the Arabic numeral '6'
    expect(formattedValue.text, '6');
  });
  // This function defines a test case
  test('should convert Tamil numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Tamil numeral '౨'
    TextEditingValue newValue = const TextEditingValue(text: '౨');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Tamil numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Tamil numeral '౨' to the Arabic numeral '2'
    expect(formattedValue.text, '2');
  });
  // This function defines a test case
  test('should convert Telugu numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Telugu numeral '౪'
    TextEditingValue newValue = const TextEditingValue(text: '౪');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Telugu numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Telugu numeral '౪' to the Arabic numeral '4'
    expect(formattedValue.text, '4');
  });
  // This function defines a test case
  test('should convert Thai numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Thai numeral '๒'
    TextEditingValue newValue = const TextEditingValue(text: '๒');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Thai numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Thai numeral '๒' to the Arabic numeral '2'
    expect(formattedValue.text, '2');
  });
  // This function defines a test case
  test('should convert Urdu numerals to Arabic numerals', () {
    // Arrange
    // Define the 'old' value as an empty TextEditingValue
    TextEditingValue oldValue = TextEditingValue.empty;
    // Define the 'new' value as a TextEditingValue with the text set to the Urdu numeral '۴'
    TextEditingValue newValue = const TextEditingValue(text: '۴');

    // Act
    // Pass the old and new values to the formatter's formatEditUpdate method
    // The formatter should convert any Urdu numerals in the new value to Arabic numerals
    TextEditingValue formattedValue = formatter.formatEditUpdate(oldValue, newValue);

    // Assert
    // Check that the formatter correctly converted the Urdu numeral '۴' to the Arabic numeral '4'
    expect(formattedValue.text, '4');
  });
}
