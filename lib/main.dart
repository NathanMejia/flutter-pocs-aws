import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'DrawerPOC/init_menu.dart';

void main(List<String> args) => runApp(const MyApp());


class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      builder: (context, child) => 
        ResponsiveSizer(builder: (context, orientation , widget)=> child!),
      debugShowCheckedModeBanner: false,
      title: "HOLA ",
      home: const InitMenu()
    );
  }
  
}
