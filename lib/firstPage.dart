

import 'package:flutter/material.dart';



class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text("Tab 1 Content", style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white
        ),),
      ),
    );
  }
}
