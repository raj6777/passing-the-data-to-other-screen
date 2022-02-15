import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  String? username;
  String? password1;
   SecondScreen({Key? key,required this.username,required this.password1}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("result Screen"),),
      body: Center(
        child:Text('firstname: ${widget.username!}\npassword:${widget.password1}'),
      ),
    );
  }
}
