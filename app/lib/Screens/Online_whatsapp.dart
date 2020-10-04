import 'package:flutter/material.dart';
import 'package:finalskincancerdetector/utils.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

final GlobalKey<FormState> formKey = GlobalKey<FormState>();
class onlineWhatsapp extends StatefulWidget {
  @override
  _onlineWhatsappState createState() => _onlineWhatsappState();
}

class _onlineWhatsappState extends State<onlineWhatsapp> {

  String _message="";
  bool isButtonEnabled=false;

  Widget _specialistsCardInfo({String type,String name, String address,String number}) {
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
                radius: 56.0,
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
                  RaisedButton(
                    onPressed: () {
                      FlutterOpenWhatsapp.sendSingleMessage("$number", "$_message");
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: const BoxDecoration(
                        color: Color(0xff3EEBB4),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                            minWidth: 99.0,
                            minHeight: 36.0), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: const Text(
                          'Contact',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _areaSpecialistsText() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              'Available Specialists',
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          flexibleSpace: Container(
            decoration: gradient,
          ),
          title: const Text('Contact : Whatsapp',style: TextStyle(color: Colors.black),),
          backgroundColor: Color(0xff3EEBB4),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
                child: Column(
                  children: [
                   Container(
                     width: MediaQuery.of(context).size.width,
                     child: TextFormField(
                       key: formKey,
                       onChanged: (val){
                         setState(() {
                           isButtonEnabled=true;
                           _message=val;
                         });
                       },
                       maxLines: 10,
                       decoration: InputDecoration(
                           hintText: 'Enter Message And Select The Doctor Of Your Choice',
                         border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff3EEBB4)),
                             borderRadius: BorderRadius.circular(20.0))
                       ),
                     ),
                   ),
                    _areaSpecialistsText(),
                      Column(
                        children: [
                          _specialistsCardInfo(name:"Prateek Yashaswi",type: "Oncologist", address: "New Delhi",number:"919955592826"),
                          _specialistsCardInfo(name:"Dijoraj Senroy",type: "Oncologist", address: "Mumbai",number:"919123891595"),
                          _specialistsCardInfo(name:"Ananmay Suri",type: "Oncologist", address: "Chennai",number:"919810290680"),
                          _specialistsCardInfo(name:"Sajan Kumar Kar",type: "Oncologist", address: "Odisha",number:"918280992974")
                        ],
                      ),
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}