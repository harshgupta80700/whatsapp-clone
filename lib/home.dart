import 'package:flutter/material.dart';
import 'package:whatsapp_clone/status.dart';
import './camera.dart';
import 'calls.dart';
import 'chats.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 94, 84, 1),
        brightness: Brightness.dark,
        title: Text("WhatsApp"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
        ],
        bottom: TabBar(tabs: [
            Icon(Icons.camera_alt),
            Tab(text:'CHATS'),
            Tab(text:'STATUS'),
            Tab(text:'CALLS'),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,)
      ),

      body: TabBarView(children: [
        Camera(),
        Chats(),
        Status(),
        Calls(),
      ],
      controller: _tabController
      ),
    );
  }
}