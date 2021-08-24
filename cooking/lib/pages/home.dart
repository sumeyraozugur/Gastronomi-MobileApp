import 'package:cooking/pages/add_status.dart';
import 'package:cooking/pages/login.dart';
import 'package:cooking/services/auth_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Anasayfa"),
        ),
        
        
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Recognize Cooking"),
                accountEmail: Text("welcome"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/logo.png"),
                ),
              ),
              ListTile(
                title: Text('Anasayfa'),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Profilim'),
                onTap: () {
                  Navigator.pop(context);
                },
                leading: Icon(Icons.person),
              ),
              Divider(),
              ListTile(
                title: Text('Çıkış yap'),
                onTap: () {
                  _authService.signOut();
                
                  Navigator.pop(context);
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage(),
                  ));
                },
                leading: Icon(Icons.remove_circle),
              ),
            ],
          ),
        ),
    
        body: CameraApp());
  }
}