import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF4C5065),
        //this changes the color of main components such as app bar, nav bar (but not background)
        accentColor: Color(0xFF8A92AD),
        textTheme: TextTheme(
          body1: TextStyle(
              color:
                  Color(0xFFFFFFFF)), //dark theme already have white color text
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
      // floatingActionButton: Theme(
      //   //customizing the button by adding theme properties
      //   data: ThemeData(
      //     accentColor: Color(0xFF8A92AD),
      //   ),
      //   child: FloatingActionButton(
      //     child: Icon(Icons.add),
      //   ),
      // ),
    );
  }
}
