import 'package:flutter/material.dart';
import 'card_demo.dart';
import 'list_title_view.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: ListTitlePage(),
    );
  }
}