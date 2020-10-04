import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class realtimeDatabase extends StatefulWidget {
  @override
  _realtimeDatabaseState createState() => _realtimeDatabaseState();
}
List<Item> items = List();
Item item;
DatabaseReference itemRef;

final GlobalKey<FormState> formKey = GlobalKey<FormState>();
class _realtimeDatabaseState extends State<realtimeDatabase> {

  @override
  void initState() {
    super.initState();
    item = Item("", "");
    final FirebaseDatabase database = FirebaseDatabase.instance; //Rather then just writing FirebaseDatabase(), get the instance.
    itemRef = database.reference().child('items');
    itemRef.onChildAdded.listen(_onEntryAdded);
    itemRef.onChildChanged.listen(_onEntryChanged);
  }

  _onEntryAdded(Event event) {
    setState(() {
      items.add(Item.fromSnapshot(event.snapshot));
    });
  }

  _onEntryChanged(Event event) {
    var old = items.singleWhere((entry) {
      return entry.key == event.snapshot.key;
    });
    setState(() {
      items[items.indexOf(old)] = Item.fromSnapshot(event.snapshot);
    });
  }

  Widget databaseForm(){
    return Flexible(
      flex: 0,
      child: Center(
        child: Form(
          key: formKey,
          child: Flex(
            direction: Axis.vertical,
            children: [
              ListTile(
                leading: Icon(Icons.person,color: Colors.blue,),
                title: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Your Name",
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff3EEBB4), width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  initialValue: "",
                  onSaved: (val){
                    item.title=val;
                  },
                  validator: (val) =>val=="" ? val : null,
                ),
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(Icons.email,color: Colors.blue,),
                title: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Your Email / Contact Number",
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff3EEBB4), width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  initialValue: "",
                  onSaved: (val)=>item.body=val,
                  validator: (val) => val=="" ? val : null,
                ),
              ),
              SizedBox(height: 40,),
              Container(
                width: 100,
                child: Center(
                  child: OutlineButton(
                    splashColor: Color(0xff3EEBB4),
                    borderSide: BorderSide(
                        color: Color(0xff3EEBB4),
                        style: BorderStyle.solid
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    highlightedBorderColor: Color(0xff3EEBB4),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Send"),
                        SizedBox(width: 10,),
                        Icon(Icons.send,color: Colors.blue,)
                      ],
                    ),
                    onPressed: (){
                      handleSubmit();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  void handleSubmit() {
    final FormState form = formKey.currentState;

    if (form.validate()) {
      form.save();
      form.reset();
      itemRef.push().set(item.toJson());
    }
  }

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
          title: Text("Realtime Database",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Color(0xff3EEBB4),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(child: Text("We Will Reach You As Soon As Possible",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,color: Colors.black),textAlign: TextAlign.center,),),
              SizedBox(height: 50,),
              databaseForm(),
              SizedBox(height: 45,),
              Container(
                child: Text("History",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 30,),
              Flexible(
                child: FirebaseAnimatedList(
                  query: itemRef,
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    return new ListTile(
                      leading: Icon(Icons.message,color: Colors.blue,),
                      title: Text(items[index].title),
                      subtitle: Text(items[index].body),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Item {
  String key;
  String title;
  String body;
  String time;

  Item(this.title, this.body);

  Item.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key,
        title = snapshot.value["title"],
        body = snapshot.value["body"];

  toJson() {
    return {
      "title": title,
      "body": body,
    };
  }
}
