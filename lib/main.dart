import 'package:flutter/material.dart';

// ui pages
import 'package:poolr/ui/welcomepage.dart';

// asset files
import 'resources/strings/strings.dart' as strings;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: strings.appTitle,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: const WelcomePage(),
    );
  }
}
