import 'package:flutter/material.dart';

import '../drawer/drawer_widget.dart';



class View3 extends StatelessWidget {
  const View3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(inView: "VIEW 3", fullReplacement: false,),
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "ESTAMOS EN EL VIEW 3",
          style: TextStyle(fontSize: 32),
        ),
      )
    );
  }
}


