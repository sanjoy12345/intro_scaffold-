import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _onPress(){
    print("Camera Tapped!");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.greenAccent.shade700,
        title: new Text("Fency Day"),

        actions:<Widget> [


              new IconButton(icon: new Icon(Icons.send), onPressed: ()=> debugPrint("Icon Tapped!"))

              new IconButton(
                  icon: new Icon(Icons.search),
                  onPressed: _onPress)
            ],
          ),
      backgroundColor: Colors.blue.shade400 ,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Sanju",style: new TextStyle(fontSize: 15.5,
                fontWeight: FontWeight.w900,
                color: Colors.black),),
            new InkWell(
              child: new Text("Button!"),
              onTap: ()=> debugPrint("Button Tapped"),
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: ()=>debugPrint("Pressed")
      ,backgroundColor: Colors.redAccent,
      tooltip: 'Going up!',
      child: new Icon(Icons.call_missed),),

      bottomNavigationBar: BottomNavigationBar(items:[
      new BottomNavigationBarItem(icon: new Icon(Icons.add),title: new Text("Hey")),
      new BottomNavigationBarItem(icon: new Icon(Icons.print),title: new Text("Nope")),
      new BottomNavigationBarItem(icon: new Icon(Icons.call_missed),title: new Text("Hello"))
      ], onTap: (int i)=> debugPrint("Hey Touched $i"),),

    );

  }
}
