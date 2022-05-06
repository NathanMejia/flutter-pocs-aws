import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../drawer/drawer_widget.dart';
import '../subview/any_subview.dart';



class View1 extends StatelessWidget {
  const View1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(inView: "VIEW 1", fullReplacement: false,),
      appBar: AppBar(),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text(
              "ESTAMOS EN EL VIEW 1",
              style: TextStyle(fontSize: 32),
            ),

            ElevatedButton(
              onPressed: () => 
                Navigator.push(
                  context, 
                  CupertinoPageRoute(builder: (context) => const AnySubview())
                ), 
              child: const Text("ir a subview")
            )
          ],
        ),
      )
    );
  }
}


