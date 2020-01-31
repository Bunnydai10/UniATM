import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/login_screen.dart';
import 'package:flutter_login_ui/screens/signup.dart';
import 'package:flutter_login_ui/screens/signup1.dart';
import 'package:flutter_login_ui/main/home.dart';

class MainScreen extends StatefulWidget {
  MainScreen() : super();
 
 
  @override
  MainScreenState createState() => MainScreenState();
}
 
class MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  //
 
  TabController controller;
  int currentTab = 2;

  
 
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
  }
 
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
         SignUp1(),
         LoginScreen(),
         MainUI(),
         SignupPage(),
         LoginScreen(),
        ],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        
        color: Colors.blue[900],
        child: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.person),
            ),
            Tab(
              icon: Icon(Icons.school),
            ),
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.chat_bubble),
            ),
            Tab(
              icon: Icon(Icons.games),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}