import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1E33),),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: Color(0xFF1D1E33),),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: Colors.blue,),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1E33),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Key class is to track the state of the widget
class ReusableCard extends StatelessWidget {
  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);

  ReusableCard({@required this.colour});
  //final keyword makes colour variable imutable
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
