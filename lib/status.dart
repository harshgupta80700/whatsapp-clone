import 'package:flutter/material.dart';


class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 40.0,
                child: FloatingActionButton(onPressed: (){},
                backgroundColor:Colors.white70,
                child: Icon(
                  Icons.colorize,
                  color: Colors.blueGrey,
                ),),
              ),
              SizedBox(height: 15.0),
              FloatingActionButton(onPressed: (){},
              backgroundColor:Color.fromRGBO(37, 211, 102, 1),
                
              child: Icon(
                Icons.camera_alt
              ),),
            ],
          ),
          body: Column(      
        children: <Widget>[
           ListTile(
              title: Text("My Status",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              subtitle: Text('Tap to add status update'),
              leading: Stack(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/myphoto2.jpg"),
                  ),
                  Positioned(bottom: 0,
                  right: 0,
                  child: Container(
                    height: 15.0,
                    width: 15.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(37, 211, 102, 1)
                    ),
                    child: Center(child: Text("+")),
                  ),)
                ],
              ),
              
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 22.0,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 15.0,),
                  Text("Recents Updates")
                ],
              )
            ),
            
          
        ],
      ),
    );
  }
}