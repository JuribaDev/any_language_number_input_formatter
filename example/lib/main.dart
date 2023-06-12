import 'package:any_language_number_input_formatter/any_language_number_input_formatter.dart';
import 'package:flutter/material.dart';

// Import your custom TextInputFormatter class to be used in text fields

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _disable = true; // Flag to disable or enable the Indian number formatter

  // Method to toggle the _disable flag, which in turn disables or enables the number formatter
  void _disableTheFormatter() {
    setState(() {
      _disable = !_disable;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(), // To make the keyboard disappear
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Any Language Number Input Formatter"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Number Keyboard - 2"),
                TextField(
                  style: const TextStyle(fontSize: 30),
                  keyboardType: TextInputType.number, // The keyboard type is number
                  inputFormatters: _disable
                      ? []
                      : [
                          AnyLanguageNumberInputFormatter()
                        ], // If _disable is true, no formatter is used. Otherwise, the IndianNumberInputFormatter is used
                ),
                const SizedBox(
                  height: 20, // Space between the TextField and TextFormField
                ),
                const Text("Normal Keyboard"), // Label for the TextFormField
                TextFormField(
                  style: const TextStyle(fontSize: 30),
                  inputFormatters: _disable
                      ? []
                      : [
                          AnyLanguageNumberInputFormatter()
                        ], // If _disable is true, no formatter is used. Otherwise, the IndianNumberInputFormatter is used
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: ElevatedButton(
          onPressed: _disableTheFormatter, // When the button is pressed, _disableTheFormatter is invoked
          child: Text(
            _disable ? 'Enable The Formatter' : 'Disable The Formatter',
            style: TextStyle(color: _disable ? null : Colors.red),
          ), // The text of the button changes based on the value of _disable
        ),
      ),
    );
  }
}
