import 'package:flutter/material.dart';
import 'package:flutter_login/pages/auth_page.dart';

void main() => runApp(MyApp());

class MyApp  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterLogin',
      theme: ThemeData(
        primarySwatch: Colors.blue,        
      ),
      home: AuthPage(),
    );
  }
}
