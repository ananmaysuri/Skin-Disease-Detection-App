import 'package:flutter/material.dart';

import '../utils.dart';

class NailFungus extends StatelessWidget {
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
          title: Text("Nail Fungus",style: TextStyle(color: Colors.black),),
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
                  child: Text("About Nail Fungus:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Text("Nail fungus is a common condition that begins as a white or yellow spot under the tip of your fingernail or toenail. As the fungal infection goes deeper, nail fungus may cause your nail to discolor, thicken and crumble at the edge. It can affect several nails.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("If your condition is mild and not bothering you, you may not need treatment. If your nail fungus is painful and has caused thickened nails, self-care steps and medications may help. But even if treatment is successful, nail fungus often comes back.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text("Nail fungus is also called onychomycosis (on-ihkoh-my-KOH-sis). When fungus infects the areas between your toes and the skin of your feet, it's called athlete's foot (tinea pedis).",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text("Identification:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Text("You may have nail fungus if one or more of your nails are:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Thickened.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Whitish to yellow-brown discoloration.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Brittle, crumbly or ragged.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Distorted in shape.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("A dark color, caused by debris building up under your nail.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Smelling slightly foul.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Nail fungus can affect fingernails, but it's more common in toenails.",style: TextStyle(fontSize: 18),),
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

