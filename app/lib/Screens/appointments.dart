import 'package:flutter/material.dart';
import 'package:finalskincancerdetector/utils.dart';


class setappontment extends StatefulWidget {
  @override
  _setappontmentState createState() => _setappontmentState();
}

class _setappontmentState extends State<setappontment> {

  Widget _areaSpecialistsText() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              'Recommended Specialist',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _specialistsCardInfo({String type,String name, String address}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1.0,
              blurRadius: 6.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(USER_IMAGE),
                radius: 40.0,
              ),
              SizedBox(
                width: 30.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '$type\n',
                      style: TextStyle(
                        color: Color(0xff3EEBB4),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.3,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "$name",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: "\n$address",
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          flexibleSpace: Container(
            decoration: gradient,
          ),
          backgroundColor: Color(0xff3EEBB4),
          title: Text("Set Appointment",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(19.0),
          child: Column(
            children: [
              _areaSpecialistsText(),
              _specialistsCardInfo(name:"Dr. Mehta",type: "Oncologist", address: "New Delhi"),
              SizedBox(height: 40,),
              Container(
                child: Text("Choices",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              SizedBox(height: 50,),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    height: MediaQuery.of(context).size.height*0.06,
                    child: OutlineButton(
                      splashColor: Color(0xff3EEBB4),
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      highlightedBorderColor: Color(0xff3EEBB4),
                      borderSide: BorderSide(color: Color(0xff3EEBB4)),
                      child: Text("Offline",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      onPressed: (){
                        Navigator.pushNamed(context, "/offline");
                      },
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    height: MediaQuery.of(context).size.height*0.06,
                    child: OutlineButton(
                      splashColor: Color(0xff3EEBB4),
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      highlightedBorderColor: Color(0xff3EEBB4),
                      borderSide: BorderSide(color: Color(0xff3EEBB4)),
                      child: Text("Online",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      onPressed: (){
                        Navigator.pushNamed(context, "/modeofcontact");
                      },
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
