import 'package:flutter/material.dart';


class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
        child: Text("Tab 3 Content",style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white
        ),),
      ),
    );
  }
}
