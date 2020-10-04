import 'package:flutter/material.dart';
import '../utils.dart';

class moreinfo extends StatefulWidget {
  @override
  _moreinfoState createState() => _moreinfoState();
}

class _moreinfoState extends State<moreinfo> {
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
          title: Text("Diseases",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Color(0xff3EEBB4),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const ListTile(
                          leading: Icon(Icons.info,color: Colors.black),
                          title: Text('Melanoma\n',),
                          subtitle: Text("Melanoma, the most serious type of skin cancer..."),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know More'),
                              onPressed: () {
                                Navigator.pushNamed(context, "/melanomainfo");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const ListTile(
                          leading: Icon(Icons.info,color: Colors.black,),
                          title: Text('Basal Cell Carcinoma\n',),
                          subtitle: Text("Basal cell carcinoma begins in the basal cells — a type of cell within the skin that produces new skin cells as old ones die off..."),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know More'),
                              onPressed: () {Navigator.pushNamed(context, "/basalcellcarcinoma");},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const ListTile(
                          leading: Icon(Icons.info,color: Colors.black,),
                          title: Text('Actinic Keratosis\n',),
                          subtitle: Text("An Actinic Keratosis is a rough, scaly patch on your skin that develops from years of exposure to the sun..."),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know More'),
                              onPressed: () {Navigator.pushNamed(context, "/ActinicKeratosis");},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const ListTile(
                          leading: Icon(Icons.info,color: Colors.black,),
                          title: Text('Seborrheic keratosis\n',),
                          subtitle: Text("A Seborrheic Keratosis is a common noncancerous skin growth.People tend to get more of them as they get older..."),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know More'),
                              onPressed: () {Navigator.pushNamed(context, "/SeborrheicKeratosis");},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const ListTile(
                          leading: Icon(Icons.info,color: Colors.black,),
                          title: Text('Dermatofibroma\n',),
                          subtitle: Text("Dermatofibromas are small, harmless growths that appear on the skin..."),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know More'),
                              onPressed: () {Navigator.pushNamed(context, "/Dermatofibroma");},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const ListTile(
                          leading: Icon(Icons.info,color: Colors.black,),
                          title: Text('Mole (Melanocytic Nevi)\n',),
                          subtitle: Text("A mole is a common benign skin lesion due to a local proliferation of pigment cells (melanocytes)..."),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know More'),
                              onPressed: () {Navigator.pushNamed(context, "/mole");},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const ListTile(
                          leading: Icon(Icons.info,color: Colors.black,),
                          title: Text('Vascular Lesions\n',),
                          subtitle: Text("Vascular birthmarks are common, idiopathic (of unknown cause) clusters of blood vessel growths found in infants and children..."),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know More'),
                              onPressed: () {Navigator.pushNamed(context, "/VascularLesions");},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const ListTile(
                          leading: Icon(Icons.info,color: Colors.black,),
                          title: Text('Acne\n',),
                          subtitle: Text("Acne is a skin condition that occurs when your hair follicles become plugged with oil and dead skin cells..."),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know More'),
                              onPressed: () {Navigator.pushNamed(context, "/acne");},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const ListTile(
                          leading: Icon(Icons.info,color: Colors.black,),
                          title: Text('Rosacea\n',),
                          subtitle: Text("Rosacea is a common skin condition that causes redness and visible blood vessels in your face..."),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know More'),
                              onPressed: () {Navigator.pushNamed(context, "/rosacea");},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const ListTile(
                          leading: Icon(Icons.info,color: Colors.black,),
                          title: Text('Impetigo\n',),
                          subtitle: Text("Impetigo is a common and highly contagious skin infection that mainly affects infants and children..."),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know More'),
                              onPressed: () {Navigator.pushNamed(context, "/Impetigo");},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const ListTile(
                          leading: Icon(Icons.info,color: Colors.black,),
                          title: Text('Atopic dermatitis\n',),
                          subtitle: Text("Atopic dermatitis is a condition that makes your skin red and itchy..."),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know More'),
                              onPressed: () {Navigator.pushNamed(context, "/Atopicdermatitis");},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const ListTile(
                          leading: Icon(Icons.info,color: Colors.black,),
                          title: Text('Nail Fungus\n',),
                          subtitle: Text("Nail fungus is a common condition that begins as a white or yellow spot under the tip of your fingernail or toenail..."),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know More'),
                              onPressed: () {Navigator.pushNamed(context, '/nailfungus');},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
