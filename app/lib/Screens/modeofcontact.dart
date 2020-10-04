import 'package:flutter/material.dart';

import '../utils.dart';

class modeofcontact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          flexibleSpace: Container(
            decoration: gradient,
          ),
          title: Text("Mode Of Contact",style: TextStyle(color: Colors.black),textAlign: TextAlign.center,),
          centerTitle: true,
          backgroundColor: Color(0xff3EEBB4),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Select A Mode Of Contact",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                SizedBox(height: 60,),
                Container(
                  child: Text("You Can Contact The Available Doctors",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                ),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width*0.6,
                  height: MediaQuery.of(context).size.height*0.06,
                  child: OutlineButton(
                    splashColor: Color(0xff3EEBB4),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    highlightedBorderColor: Color(0xff3EEBB4),
                    borderSide: BorderSide(color: Color(0xff3EEBB4)),
                    child: Text("Email",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    onPressed: (){
                      Navigator.pushNamed(context, "/online_email");
                    },
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width*0.6,
                  height: MediaQuery.of(context).size.height*0.06,
                  child: OutlineButton(
                    splashColor: Color(0xff3EEBB4),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    highlightedBorderColor: Color(0xff3EEBB4),
                    borderSide: BorderSide(color: Color(0xff3EEBB4)),
                    child: Text("Whatsapp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    onPressed: (){
                      Navigator.pushNamed(context, "/online_whatsapp");
                    },
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text("Or, You Can Give Your Details And We Will Reach You As Soon As Possible",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                ),
                SizedBox(height: 30,),
                Container(
                  width: MediaQuery.of(context).size.width*0.6,
                  height: MediaQuery.of(context).size.height*0.06,
                  child: OutlineButton(
                    splashColor: Color(0xff3EEBB4),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    highlightedBorderColor: Color(0xff3EEBB4),
                    borderSide: BorderSide(color: Color(0xff3EEBB4)),
                    child: Text("Add To Our Database",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    onPressed: (){
                      Navigator.pushNamed(context, "/realtimedatabase");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
