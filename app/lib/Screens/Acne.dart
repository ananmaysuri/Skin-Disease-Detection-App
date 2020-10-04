import 'package:flutter/material.dart';

import '../utils.dart';

class Acne extends StatelessWidget {
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
          title: Text("Acne",style: TextStyle(color: Colors.black),),
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
                  child: Text("About Acne:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Text("Acne is a skin condition that occurs when your hair follicles become plugged with oil and dead skin cells. It causes whiteheads, blackheads or pimples. Acne is most common among teenagers, though it affects people of all ages.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Effective acne treatments are available, but acne can be persistent. The pimples and bumps heal slowly, and when one begins to go away, others seem to crop up.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Depending on its severity, acne can cause emotional distress and scar the skin. The earlier you start treatment, the lower your risk of such problems.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text("Identification:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Text("Acne signs vary depending on the severity of your condition:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Whiteheads (closed plugged pores).",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Blackheads (open plugged pores).",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Small red, tender bumps (papules).",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Pimples (pustules), which are papules with pus at their tips.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Large, solid, painful lumps under the skin (nodules).",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Painful, pus-filled lumps under the skin (cystic lesions).",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Acne usually appears on the face, forehead, chest, upper back and shoulders.",style: TextStyle(fontSize: 18),),
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

