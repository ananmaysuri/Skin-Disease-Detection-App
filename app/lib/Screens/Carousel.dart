import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../utils.dart';


class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  List imgList = [
    'assets/images/pic1.png',
    'assets/images/pic2.png',
    'assets/images/pic3.png',
    'assets/images/Pic5.png',
    'assets/images/pic4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.all(26.0),
                child: CarouselSlider(
                  items: imgList.map((item) => ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image.asset(item, fit: BoxFit.fill, width: 1000),
                  )).toList(),
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height*0.55,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlayAnimationDuration: Duration(milliseconds: 400),
                      enlargeCenterPage: true,
                      aspectRatio: 1.8,
                      enableInfiniteScroll: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map((url) {
                  int index = imgList.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Colors.cyan : Colors.black26,
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  height: MediaQuery.of(context).size.height*0.07,
                  child: OutlineButton(
                    splashColor: Color(0xff3EEBB4),
                    borderSide: BorderSide(color: Color(0xff3EEBB4)),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    highlightedBorderColor: Color(0xff3EEBB4),
                    onPressed: (){
                      Navigator.pushNamed(context, "/login_and_home");
                    },
                    child: Text("Go To Login",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}

