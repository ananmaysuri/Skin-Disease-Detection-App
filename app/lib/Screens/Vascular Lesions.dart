import 'package:flutter/material.dart';

import '../utils.dart';

class VascularLesions extends StatelessWidget {
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
          title: Text("Vascular Lesions",style: TextStyle(color: Colors.black),),
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
                  child: Text("About Vascular Lesions:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Text("Vascular birthmarks are common, idiopathic (of unknown cause) clusters of blood vessel growths found in infants and children. They are present at birth but may not have a noticeable appearance for weeks and sometimes years.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("These birthmarks are classified in two groups: tumors and malformations. Vascular tumors are neoplasms, involving cellular proliferation of vessels. Vascular malformations, on the other hand, do not involve active proliferation of the blood vessels and are stable throughout one’s lifetime; they are further classified according to the type of vessels found in the birthmark.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text("Oftentimes, these vascular birthmarks are standalone lesions, without association with other findings. Occasionally, however, vascular birthmarks may be found in a larger constellation of physical findings, comprising a vascular malformation syndrome such as Sturge-Weber syndrome or Klippel-Trenaunay syndrome. This is one reason why it is important for vascular birthmarks to be evaluated by a pediatric dermatologist.",style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text("Vascular lesions have a varied appearance and can commonly occur in the head and neck. A majority of these lesions are cutaneous and congenital; however, some may be acquired and malignant. The presentation and clinical history of patients presenting with head and neck lesions can be used to guide further imaging, which can provide important diagnostic and therapeutic considerations.",style: TextStyle(fontSize: 18),),
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

