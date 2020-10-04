import 'package:flutter/material.dart';

import '../utils.dart';

class mole extends StatelessWidget {
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
          title: Text("Mole",style: TextStyle(color: Colors.black),),
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
                  child: Text("About Mole (Melanocytic Nevi):",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Text("A mole is a common benign skin lesion due to a local proliferation of pigment cells (melanocytes). It is more correctly called a melanocytic naevus (American spelling ‘nevus’) and is sometimes also called a naevocytic naevus. A brown or black mole contains the pigment melanin, so may also be called a pigmented naevus.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("A mole can be present at birth (congenital naevus) or appear later (acquired naevus). There are various kinds of congenital and acquired naevi (American spelling 'nevi').",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Almost everyone has at least one mole.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text("About 1% of individuals are born with one or more congenital melanocytic naevi. This is usually sporadic, with rare instances of familial congenital naevi.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text("Fair-skinned people tend to have more moles than darker skinned people.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Text("Moles that appear during childhood (aged 2 to 10 years) tend to be the most prominent and persistent moles throughout life.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Moles that are acquired later in childhood or adult life often follow sun exposure.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Most white-skinned New Zealanders have 20–50 moles.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("People worry about moles because they have heard about melanoma, a malignant proliferation of melanocytes that is the most common reason for death from skin cancer..",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("At first, melanoma may look similar to a harmless mole, but in time it becomes more disordered in structure and tends to enlarge. People with a greater number of moles have a higher risk of developing melanoma than those with few moles, especially if they have over 100 of them.",style: TextStyle(fontSize: 18),),
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

