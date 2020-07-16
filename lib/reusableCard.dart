import 'package:flutter/material.dart';

//ReuseableCard widget

//Key class is to track the state of the widget
class ReusableCard extends StatelessWidget {
  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);

  ReusableCard({@required this.colour, this.cardChild});
  //final keyword makes colour variable imutable
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
