import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/firstPage.dart';
import 'package:flutter_tab_bar/secondPage.dart';
import 'package:flutter_tab_bar/thirdPage.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab ${controller.index + 1}"),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          tabs: [
            Tab(
              text: "Tab1",
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "Tab2",
              icon: Icon(Icons.star),
            ),
            Tab(
              text: "Tab3",
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          Center(child: FirstPage()),
          Center(child: SecondPage()),
          Center(child: ThirdPage()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.animateTo(1);
        },
        child: Icon(
          Icons.add,
          size: 32,
        ),
      ),
    );
  }
}
