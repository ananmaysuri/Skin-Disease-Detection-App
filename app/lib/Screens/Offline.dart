import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';
import 'package:dio/dio.dart';

import '../utils.dart';

class OfflineAppointment extends StatefulWidget {
  @override
  _OfflineAppointmentState createState() => _OfflineAppointmentState();
}
bool doctorsnearyou;
Position _currentpos;
bool locationfetched=false;



class _OfflineAppointmentState extends State<OfflineAppointment> {

  @override
  void initState(){
    super.initState();
    setState(() {
      doctorsnearyou=false;
    });
  }

  _getCurrentLoc() async{
    Position position = await getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
    setState(() {
      _currentpos=position;
      locationfetched=true;
      doctorsnearyou=true;
    });
    _goToUserLoc();
    searchNearby();
  }
//
  static const String API_KEY = 'AIzaSyBoBDMc51gKPWfRkYy8waqBJdwSB4oGAok';

  Future<List<String>> searchNearby() async {
     double lat = _currentpos.latitude;
     double lng = _currentpos.longitude;
    var dio = Dio();
      var url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json";
    var parameters ={
      "key" : API_KEY,
      "location" : "$lat,$lng",
      "radius" : "8000",
      "type" : "hospital"
    };

    var response=await dio.get(url,queryParameters:parameters);
    print(response);
    //print("ResponseData: "+ response.data["results"].map<String>((result)=>result["name"].toString()).toList());
  }

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(19.076090,72.877426),
    zoom: 14.4746,
  );

  static final CameraPosition _userlocation = CameraPosition(
      target: LatLng(_currentpos.latitude,_currentpos.longitude),
      zoom: 16);

  Widget _areaSpecialistsText() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              'List Of Doctors Near You',
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
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(USER_IMAGE),
                    radius: 30.0,
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
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.3,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "$name",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: MediaQuery.of(context).size.width*0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: "\n$address",
                              style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
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
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          flexibleSpace: Container(
            decoration: gradient,
          ),
          title: Text("Google Maps",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Color(0xff3EEBB4),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width:MediaQuery.of(context).size.width,
                height: 350,
                child: GoogleMap(
                  mapType: MapType.hybrid,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child:
                Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  child: OutlineButton(
                    splashColor: Color(0xff3EEBB4),
                    borderSide: BorderSide(color: Color(0xff3EEBB4)),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    highlightedBorderColor: Color(0xff3EEBB4),
                    onPressed:  _getCurrentLoc,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Get Nearby Medical Facilities"),SizedBox(width: 10,),Icon(Icons.location_searching)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30,0,30,0),
                child: Divider(
                  thickness: 0.3,
                  color: Color(0xff3EEBB4),
                ),
              ),
              doctorsnearyou ? Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    _areaSpecialistsText(),
                    _specialistsCardInfo(name:"Mehta Group Of Hospitals",type: "Hospital", address: "0.5 km"),
                    _specialistsCardInfo(name:"AIIMS",type: "Hospital", address: "1 km"),
                    _specialistsCardInfo(name:"Apollo Hospital",type: "Hospital", address: "3 km"),
                    _specialistsCardInfo(name:"Medanta – The Medicity",type: "Hospital", address: "3.6 km"),
                  ],
                ),
              ) : Container(child: Text(""),)
            ],
          ),
        ),
      ),
    );
  }
  Future<void> _goToUserLoc() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_userlocation));
  }
}
