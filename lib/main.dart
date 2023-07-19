//AppBar Actions
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//=============Main===============================
void main() {
  runApp(const myApp());
}

//================MyApp=============================
class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: homeActivity(),
    );
  }
}

//=============Activity Page============================
class homeActivity extends StatelessWidget {
  const homeActivity({super.key});

  //=====SnackBar Function==========================
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    //================Scaffold==========================
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Actions"),
        titleSpacing: 10,
        // centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        backgroundColor: Colors.green,
        //=======Actions=========================
        actions: [
          IconButton(onPressed: () {MySnackBar("I am facebook", context);}, icon: Icon(Icons.facebook)),
          IconButton(onPressed: () {MySnackBar("I am comment", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: () {MySnackBar("I am person", context);}, icon: Icon(Icons.person)),
        ],
      ),
      body: Text("My App"),
    );
  }
}
