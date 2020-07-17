import 'package:flutter/material.dart';
import 'screens/inputPage.dart';
import 'screens/resultsPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        //this changes the color of main components such as app bar, nav bar (but not background)
        // accentColor: Color(0xFF8A92AD),
        textTheme: TextTheme(
          body1: TextStyle(
              color:
                  Color(0xFFFFFFFF)), //dark theme already have white color text
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/resultsPage': (context) => ResultsPage(),
      },
    );
  }
}
