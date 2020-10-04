import 'package:flutter/material.dart';

import '../utils.dart';

class Atopicdermatitis extends StatelessWidget {
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
          title: Text("Atopic dermatitis",style: TextStyle(color: Colors.black),),
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
                  child: Text("About Atopic dermatitis:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Text("Atopic dermatitis (eczema) is a condition that makes your skin red and itchy. It's common in children but can occur at any age. Atopic dermatitis is long lasting (chronic) and tends to flare periodically. It may be accompanied by asthma or hay fever.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("No cure has been found for atopic dermatitis. But treatments and self-care measures can relieve itching and prevent new outbreaks. For example, it helps to avoid harsh soaps, moisturize your skin regularly, and apply medicated creams or ointments.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text("Identification:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Text("Atopic dermatitis signs and symptoms vary widely from person to person and include:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Dry skin.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Itching, which may be severe, especially at night.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Red to brownish-gray patches, especially on the hands, feet, ankles, wrists, neck, upper chest, eyelids, inside the bend of the elbows and knees, and in infants, the face and scalp.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Small, raised bumps, which may leak fluid and crust over when scratched.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Thickened, cracked, scaly skin.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Raw, sensitive, swollen skin from scratching.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Atopic dermatitis most often begins before age 5 and may persist into adolescence and adulthood. For some people, it flares periodically and then clears up for a time, even for several years.",style: TextStyle(fontSize: 18),),
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

