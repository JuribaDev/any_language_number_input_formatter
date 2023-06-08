import 'package:any_language_number_input_formatter/input_state.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  group('InputState Tests', () {
    test('updateInputState should correctly update the state', () {
      final inputState = InputState();
      TextEditingValue oldValue = TextEditingValue.empty;
      TextEditingValue newValue = const TextEditingValue(text: "123");


      inputState.updateInputState(newValue, oldValue);

      expect(inputState.counter, 1);
      expect(inputState.doesTheUserPressBackSpace, false);
      expect(inputState.isCopyPaste, true);

      oldValue = const TextEditingValue(text: "1235");
      newValue = const TextEditingValue(text: "123");

      inputState.updateInputState(newValue, oldValue);

      expect(inputState.counter, 2);
      expect(inputState.doesTheUserPressBackSpace, true);
      expect(inputState.isCopyPaste, false);

      oldValue = TextEditingValue.empty;
      newValue = const TextEditingValue(text: "123");

      inputState.updateInputState(newValue, oldValue);

      expect(inputState.counter, 3);
      expect(inputState.doesTheUserPressBackSpace, false);
      expect(inputState.isCopyPaste, false);
    });
  });
}
