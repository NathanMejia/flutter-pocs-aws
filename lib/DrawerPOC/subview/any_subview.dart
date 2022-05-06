import 'package:flutter/material.dart';

import '../drawer/drawer_widget.dart';



class AnySubview extends StatelessWidget {
  const AnySubview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(inView: "VIEW 1", fullReplacement: false,),
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context),
          icon: const Icon(Icons.arrow_back)
        ),
      ),
      body: const Center(
        child: Text("Soy una SubView", 
        style: TextStyle(fontSize: 28),)
      ),
    );
  }
}