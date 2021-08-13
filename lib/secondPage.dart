import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Text("Tab 2 Content",style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white
        ),),
      ),
    );
  }
}
