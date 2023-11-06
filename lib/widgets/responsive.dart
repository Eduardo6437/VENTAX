import 'package:flutter/material.dart';




class Responsive extends StatefulWidget {
  const Responsive ({super.key});






  @override
  _ResponsiveState createState() => _ResponsiveState();
}//Responsive








class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return  Scaffold(
//backgroundColor:
     // currentWidth < 600 ? Colors.deepPurple[300] : Colors.deepPurple[300],
      body: Center (
        child: Text (currentWidth.toString()),

      ),

    );//Scaffold

  }//Widget build(BuildContext context)

}//_ResponsiveState
