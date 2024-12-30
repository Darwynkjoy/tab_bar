import 'package:flutter/material.dart';

class TabbarExample extends StatefulWidget{
@override
  State<TabbarExample> createState()=> _tabbarState();
}

class _tabbarState extends State<TabbarExample>{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar Example"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.home),text: "Home",),
            Tab(icon: Icon(Icons.favorite),text: "Favorites",),
            Tab(icon: Icon(Icons.notifications),text: "Notifications",),
            Tab(icon: Icon(Icons.settings),text: "Settings",),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text("home screen")),
          Center(child: Text("favorites screen")),
          Text("notification screen"),
          Text("settings screen")
        ]),
      ),
    );
  }
}