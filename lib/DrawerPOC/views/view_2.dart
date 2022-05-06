import 'package:flutter/material.dart';

import '../drawer/drawer_widget.dart';



class View2 extends StatelessWidget {
  const View2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(inView: "VIEW 2", fullReplacement: false,),
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "ESTAMOS EN EL VIEW 2",
          style: TextStyle(fontSize: 32),
        ),
      )
    );
  }
}


