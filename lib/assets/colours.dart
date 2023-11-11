// Define a custom theme
import 'package:flutter/material.dart';

final ThemeData myTheme = ThemeData(
  primaryColor: Colors.deepPurple,
  hintColor: Colors.green,
  fontFamily: 'Roboto',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    // Add more text styles as needed
  ),
  // Define more properties like button themes, app bars, etc.
);
