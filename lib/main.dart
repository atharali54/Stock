import 'package:flutter/material.dart';
// import 'package:stock/CatWithModel.dart';
import 'package:stock/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      
         
      theme: ThemeData(primarySwatch: Colors.brown),
      home: //CatwithModel()
          HomePage(),
    );
  }
}
