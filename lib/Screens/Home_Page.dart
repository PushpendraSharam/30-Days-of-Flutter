import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var day=30;
    var name="Pushpa";
   return Scaffold(
     appBar: AppBar(
       title: Text("Dashboard"),
     ),
       body: Center(
         child: Container(
           child: Text("Welcome to $day days of Flutter $name "),
         ),
       ),
       drawer: Drawer(),
   );
  }

}