import 'package:flutter/material.dart';
import 'chatscreen.dart';
void main()=> runApp(homepage());

class mylistview extends StatefulWidget {
  @override
  _mylistviewState createState() => _mylistviewState();
}

class _mylistviewState extends State<mylistview> {
  bool Liked = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          //textDirection the direction of the text it might be rtl= right to lift or ltr= lift to right
          title: Text("فراس",textDirection: TextDirection.rtl,),
        ),
        ListTile(
          title: Text("صالح",textDirection: TextDirection.rtl,),
        ),
        ListTile(
          title: Text("محمد",textDirection: TextDirection.rtl,),
        ),
        ListTile(
          title: Text("يحيى",textDirection: TextDirection.rtl,),
        ),
        ListTile(
          title: Text("خالد",textDirection: TextDirection.rtl,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Chat_screen() ));
            },

        ),
        ListTile(
          leading: CircleAvatar(
            child: Image.asset("lib/images/james.jpg"),
          ),
          title: Text("james"),
          subtitle: Text("hello khalid"),

          trailing: IconButton(icon: Liked? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red,), onPressed: (){
            setState(() {
              Liked = !Liked;            });
          }),
          onLongPress: (){
            print("object");
          },
        ),
        TextField(
          keyboardType: TextInputType.phone,
        ),
        FlatButton(onPressed: null, child: Text("this is a button",style: TextStyle(fontSize: 24.0),))
      ],
    );
  }
}


class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                child: Text("my item 1"),
              ),
              Container(
                child: Text("my item 2"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Myapp"),
          centerTitle: true,
        ),
        body: mylistview(),
      ),
    );
  }
}
