# Any Language Number Input Formatter Package

This package is designed to allow Flutter applications to utilize a custom input formatter for
transforming different numeral systems into Arabic numerals. Specifically, it offers
an `AnyLanguageNumberInputFormatter` that takes in numerals from various languages and outputs their
Arabic numeral equivalents.

https://github.com/JuribaDev/any_language_number_input_formatter/assets/59488534/4b0ec6a6-f8bd-4279-8604-f804c70c4edc

## 📁 Package Structure

The main components of this package include:

`AnyLanguageNumberInputFormatter`: This custom `TextInputFormatter` implementation handles text
input, formatting it by converting numerals from various languages into their Arabic numeral
equivalents.

`MyApp`: The root widget of the example application. It sets up a MaterialApp widget.

`MyHomePage`: The home page of the example application, demonstrating the usage of TextField and
TextFormField with the AnyLanguageNumberInputFormatter.

## ⚙️ How It Works

The `AnyLanguageNumberInputFormatter` class overrides the `formatEditUpdate` method. This method is
called whenever a user alters the text in a text field. The formatter checks if the new value
contains numerals in other languages and, if so, replaces them with their Arabic numeral
equivalents.

The `MyHomePage` class contains a `_disable` flag. If this flag is true, the text fields don't use
any input formatter. If it's false, they use the `AnyLanguageNumberInputFormatter`. Users can toggle
the `_disable` flag by pressing a button.

## 🚀 Getting Started

To use this package, please follow these steps:

1. Add this package to your project's `pubspec.yaml` file.
2. Run `flutter pub get` to fetch the package.
3. Import the package in your Dart file
   with `import 'package:any_language_number_input_formatter/any_language_number_input_formatter.dart';`
   .
   Ensure that Flutter and Dart are installed and properly configured on your system.

## 🛠️ Usage

You can use the `AnyLanguageNumberInputFormatter` as an input formatter for `TextField`
or `TextFormField` widgets like this:

```dart
   TextField(
      inputFormatters: [AnyLanguageNumberInputFormatter()],
      ),
   TextFormField(
      inputFormatters: [AnyLanguageNumberInputFormatter()],
      )
```

✅ Testing
Unit tests for `AnyLanguageNumberInputFormatter` and `LnaguageMapping` can be found in the test directory of the package.
To execute these tests, use the `flutter test` command.
