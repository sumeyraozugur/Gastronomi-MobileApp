import 'package:cooking/pages/login.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
     // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple, //#512DA8 //red
        visualDensity: VisualDensity.adaptivePlatformDensity,
        
      ),

      home: LoginPage(),
      );

      
  
  }
}
