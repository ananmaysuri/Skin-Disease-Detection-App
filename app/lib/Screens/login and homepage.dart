import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:finalskincancerdetector/utils.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:finalskincancerdetector/Screens/appointments.dart';

class login_and_home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _login_and_homeState();
  }
}

class _login_and_homeState extends State<login_and_home> {
  bool _isLoggedIn = false;

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  _login() async{
    try{
      await _googleSignIn.signIn();
      setState(() {
        _isLoggedIn = true;
      });
    } catch (err){
      print(err);
    }
  }

  _logout(){
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: _isLoggedIn
                ?SafeArea(
          child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      alignment: AlignmentDirectional.topCenter,
                      overflow: Overflow.visible,
                      children: <Widget>[
                        _backBgCover(),
                        _greetings(),
                      ],
                    ),
                    SizedBox(height: 35,),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: MediaQuery.of(context).size.height*0.07,
                              child: OutlineButton(
                                splashColor: Color(0xff3EEBB4),
                                borderSide: BorderSide(color: Color(0xff3EEBB4)),
                                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                highlightedBorderColor: Color(0xff3EEBB4),
                                onPressed: (){
                                  Navigator.pushNamed(context, "/imagepicker");
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Take A Test",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                ),
                              ),
                            ),
                            SizedBox(height: 40,),
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: MediaQuery.of(context).size.height*0.07,
                              child: OutlineButton(
                                splashColor: Color(0xff3EEBB4),
                                borderSide: BorderSide(color: Color(0xff3EEBB4)),
                                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                highlightedBorderColor: Color(0xff3EEBB4),
                                onPressed: (){
                                  Navigator.pushNamed(context, "/appointments");
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Go To Appointments",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                ),
                              ),
                            ),
                            SizedBox(height: 40,),
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: MediaQuery.of(context).size.height*0.07,
                              child: OutlineButton(
                                splashColor: Color(0xff3EEBB4),
                                borderSide: BorderSide(color: Color(0xff3EEBB4)),
                                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                highlightedBorderColor: Color(0xff3EEBB4),
                                onPressed: (){
                                  Navigator.pushNamed(context, "/moreinfo");
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Diseases",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                ),
                              ),
                            ),
                            SizedBox(height: 40,),
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: MediaQuery.of(context).size.height*0.07,
                              child: OutlineButton(
                                splashColor: Color(0xff3EEBB4),
                                borderSide: BorderSide(color: Color(0xff3EEBB4)),
                                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                highlightedBorderColor: Color(0xff3EEBB4),
                                onPressed: _logout,
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                ),
                              ),
                            ),
                            SizedBox(height: 40,),
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: MediaQuery.of(context).size.height*0.07,
                              child: OutlineButton(
                                splashColor: Color(0xff3EEBB4),
                                borderSide: BorderSide(color: Color(0xff3EEBB4)),
                                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                highlightedBorderColor: Color(0xff3EEBB4),
                                onPressed: (){
                                  SystemNavigator.pop();
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Close App",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      )
                : SafeArea(
                  child: Scaffold(
                    body: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:28.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*0.5,
                                alignment: Alignment.center,
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/Derman Title.png',),
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.06,
                              child: Text("Skin Cancer Detection App",style: TextStyle(fontSize: 22,color: Colors.grey[500],fontFamily: "custom"),),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.06,
                              child: Text("Health Fanatics",style: TextStyle(fontSize: 20,fontFamily: "custom",color: Colors.grey[500]),),
                            ),
                            SizedBox(height: 40,),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.07,
                              width: MediaQuery.of(context).size.width,
                              child: OutlineButton(
                                splashColor: Color(0xff3EEBB4),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  borderSide: BorderSide(color: Color(0xff3EEBB4)),
                                  highlightedBorderColor: Color(0xff3EEBB4),
                                  onPressed: () {_login();},
                                  child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height:30,
                                      child: Image(
                                        image: AssetImage("assets/images/5f645428ad9f7.png"),
                                      ),
                                    ),
                                    SizedBox(width: 30,),
                                    Container(
                                      child: Text("Login With Google",style: TextStyle(fontSize: 20,color: Colors.black),),
                                    )
                                  ],
                                )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
      ),
    );
  }

  Container _backBgCover() {
    return Container(
      height: 290,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff3EEBB4), Color(0xff30AFE4)]),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(40),
        ),
      ),
    );
  }

  Positioned _greetings() {
    return Positioned(
      left: 20,
      bottom: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20,),CircleAvatar(
            backgroundImage: NetworkImage(_googleSignIn.currentUser.photoUrl),
            radius: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                _googleSignIn.currentUser.displayName,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 25,),
            ],
          ),
          Text(
            'How are you feeling today ?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

