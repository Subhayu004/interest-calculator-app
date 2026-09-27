import 'package:flutter/material.dart';
import 'package:tip_calculator/design.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tip Calculator",
      home: TipApp(),
    );
  }
}