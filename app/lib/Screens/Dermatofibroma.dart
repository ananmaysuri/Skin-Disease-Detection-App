import 'package:flutter/material.dart';

import '../utils.dart';

class Dermatofibroma extends StatelessWidget {
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
          title: Text("Dermatofibroma",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Color(0xff3EEBB4),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              verticalDirection: VerticalDirection.down,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text("About Dermatofibroma:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Text("Dermatofibromas are small, harmless growths that appear on the skin. These growths, called nodules, can grow anywhere on the body, but are most common on the arms, lower legs, and upper back.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Dermatofibromas are an accumulation of extra cells within the deeper layers of the skin. The exact cause of these growths is unknown.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("They may be caused by an adverse reaction to a small injury, such as a bug bite, splinter, or puncture wound.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text("Age may be another risk factor, as the growths appear mostly in adults. People with suppressed immune systems may be more likely to experience dermatofibromas, and may have more than one growth.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text("Identification:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Text("Appearance – a round bump that is mostly under the skin.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Size – the normal range is about the size of the tip of a ballpoint pen to a pea, and it usually remains stable.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Color – may be pink, red, gray, light brown or purple in varying degrees, and may change over time.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Location – most commonly found on the legs, but sometimes on the arms, trunk, and less common elsewhere on the body.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Additional symptoms – usually harmless and painless, but occasionally may be itchy, tender, painful, or feel inflamed.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

