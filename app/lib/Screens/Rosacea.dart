import 'package:flutter/material.dart';

import '../utils.dart';

class Rosacea extends StatelessWidget {
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
          title: Text("Rosacea",style: TextStyle(color: Colors.black),),
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
                  child: Text("About Rosacea:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Text("Rosacea is a common skin condition that causes redness and visible blood vessels in your face. It may also produce small, red, pus-filled bumps. These signs and symptoms may flare up for weeks to months and then go away for a while. Rosacea can be mistaken for acne, other skin problems or natural ruddiness.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Rosacea can affect anyone. But it's most common  in middle-aged women who have light skin. There's no cure for rosacea, but treatment can control and reduce the signs and symptoms.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text("Identification:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Text("Signs and symptoms of rosacea include:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Facial redness. Rosacea usually causes a persistent redness in the central part of your face. Small blood vessels on your nose and cheeks often swell and become visible.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Swollen, red bumps. Many people with rosacea also develop pimples on their face that resemble acne. These bumps sometimes contain pus. Your skin may feel hot and tender.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Eye problems. Many people with rosacea also experience dry, irritated, swollen eyes and red, swollen eyelids. This is known as ocular rosacea. In some people, the eye symptoms precede the skin symptoms.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Enlarged nose. Over time, rosacea can thicken the skin on the nose, causing the nose to appear bulbous (rhinophyma). This occurs more often in men than in women.",style: TextStyle(fontSize: 18),),
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

