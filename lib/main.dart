import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:passing_data/secondscreen.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:login/signup/signup.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  String? firstname;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Colors.indigo
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(15),
        child:ListView(
          children: <Widget>[
            //Image.asset("assets/images/3.jpg",height:100,width:300),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Text("Sign In",
                style: TextStyle(fontSize: 30,color: Colors.indigo,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding:EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  //icon: Icon(Icons.account_box,size: 50,),
                  //border: OutlineInputBorder(
                  // borderRadius: BorderRadius.all(Radius.circular(20),)
                  //),
                  labelText: "Username/email/phone no.",
                  hintStyle: TextStyle(color: Colors.indigo),
                  hintText: "Enter your Name",
                ),

                onChanged: (value){
                  setState(() {
                    firstname=value;
                  });
                },

              ),

            ),
            Container(
              padding:EdgeInsets.all(15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  //icon: Icon(Icons.vpn_key_outlined,size: 50,),
                  //border: OutlineInputBorder(
                  //borderRadius: BorderRadius.all(Radius.circular(20))
                  //),
                  labelText: "Password",
                  hintText: "Enter your password",
                  hintStyle: TextStyle(color: Colors.indigo),
                ),
                onChanged: (value){
                  setState(() {
                    password=value;
                  });
                },

              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(10),
              child: Text("Forgot Password?",
                style: TextStyle(fontSize: 15,color: Colors.indigo,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.indigo,
                  child: Text('Login'),
                  onPressed: () {
                  },
                )

            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text("OR",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 30,
              width:60,
            ),

            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Text("Don't have an account yet?",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 5),
                FlatButton(
                  textColor: Colors.white,
                  color: Colors.transparent,
                  child: Text('SignUp',
                    style: TextStyle(color: Colors.indigo,
                    ),),
                  onPressed:() {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(username:firstname,password1: password,),));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}