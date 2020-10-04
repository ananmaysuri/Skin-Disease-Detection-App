import 'dart:async';
import 'dart:io';
import 'package:finalskincancerdetector/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:image_picker/image_picker.dart';

class onlineAppointments extends StatefulWidget {
  @override
  _onlineAppointmentsState createState() => _onlineAppointmentsState();
}

class _onlineAppointmentsState extends State<onlineAppointments> {
  List<String> attachments = [];

  final _recipientController = TextEditingController(
    text: '',
  );

  final _subjectController = TextEditingController(text: '');

  final _bodyController = TextEditingController(
    text: '',
  );

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> send() async {
    final Email email = Email(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: [_recipientController.text],
      attachmentPaths: attachments,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) return;

    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(platformResponse),
    ));
  }

  Widget _specialistsCardInfo({String type,String name, String address,String email}) {
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
          Column(
            children: [
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
                          setState(() {
                            _recipientController.text=email;
                            send();
                          });
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
      theme: ThemeData(primaryColor: Color(0xff3EEBB4)),
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          flexibleSpace: Container(
            decoration: gradient,
          ),
          title: Text('Contact : Email',style: TextStyle(color: Colors.black),),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(11.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 30,),
                  Container(
                    child: Text("Send Mail",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _subjectController,
                      decoration: InputDecoration(
                        hintText: 'Subject',focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Color(0xff3EEBB4), width: 2)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Color(0xff3EEBB4), width: 1),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _bodyController,
                      maxLines: 10,
                      decoration: InputDecoration(
                        hintText: 'Explain You Problem In Detail And Select The Doctor To Send An Email',focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Color(0xff3EEBB4), width: 2)),
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Color(0xff3EEBB4), width: 1),
                      ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  ...attachments.map(
                        (item) => Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Added Image Path\n\n"+
                      item,
                      overflow: TextOverflow.fade,
                    ),
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        _areaSpecialistsText(),
                        _specialistsCardInfo(name:"Prateek Yashaswi",type: "Oncologist", address: "New Delhi",email:"prateekyashaswi34@gmail.com"),
                        _specialistsCardInfo(name:"Dijoraj Senroy",type: "Oncologist", address: "Mumbai",email:"srdijoraj@gmail.com"),
                        _specialistsCardInfo(name:"Ananmay Suri",type: "Oncologist", address: "Chennai",email:"ananmaysuri2000@gmail.com"),
                        _specialistsCardInfo(name:"Sajan Kumar Kar",type: "Oncologist", address: "Odisha",email:"sajan.kumar.kar@gmail.com"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.fromLTRB(0,0,10,20),
          child: FloatingActionButton.extended(
            backgroundColor: Color(0xff3EEBB4),
            icon: Icon(Icons.camera),
            label: Text('Add Image'),
            onPressed: _openImagePicker,
          ),
        ),
      ),
    );
  }

  void _openImagePicker() async {
    File pick = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      attachments.add(pick.path);
    });
  }
}