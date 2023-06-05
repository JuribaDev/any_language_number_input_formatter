# Any Language Number Input Formatter
This project is a demonstration of how to use custom input formatter in Flutter to format text fields. Specifically, we provide an IndianNumberInputFormatter that converts Indian numerals into Arabic numerals.

## 📁 Project Structure
The project consists of the following main components:

IndianNumberInputFormatter: A custom TextInputFormatter implementation that intercepts text input and formats it by replacing Indian numerals with their Arabic numeral equivalents.

MyApp: The root widget of the application. It sets up a MaterialApp widget.

MyHomePage: The home page of the application, displaying a TextField and a TextFormField, each of which can use the IndianNumberInputFormatter.

## ⚙️ How It Works
The IndianNumberInputFormatter class overrides the formatEditUpdate method. This method is called when the user changes the text in a text field. The formatter checks if the new value contains Indian numerals and, if so, replaces them with their Arabic numeral equivalents.

The MyHomePage class contains a _disable flag. If this flag is true, the text fields don't use any input formatter. If it's false, they use the IndianNumberInputFormatter. Users can toggle the _disable flag by pressing a button.

## 🚀 Getting Started
To run the project, follow these steps:

Clone the repository.
Navigate into the project directory and run flutter pub get to install dependencies.
Run flutter run to start the app.
Please make sure that you have Flutter and Dart installed and correctly configured.

## ✅ Testing
Unit tests for IndianNumberInputFormatter are available in the test directory. To run the tests, use the flutter test command.
