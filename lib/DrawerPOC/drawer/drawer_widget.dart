import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../init_menu.dart';
import '../views/view_1.dart';
import '../views/view_2.dart';
import '../views/view_3.dart';


class CustomDrawer extends StatelessWidget {
  CustomDrawer({
    Key? key, 
    required this.inView,
    required this.fullReplacement
    }) : super(key: key);

  final String inView;
  final bool fullReplacement;

  final List<MicroModel> views = [
     MicroModel("VIEW 1", const View1()),
     MicroModel("VIEW 2", const View2()),
     MicroModel("VIEW 3", const View3()),
   ];

  @override
  Widget build(BuildContext context) {

    views.removeWhere( (element) => element.viewName == inView );

    return Drawer(
      child: Column(
        children: [
          Container(
            height: 260,
            color: Colors.blue.shade900,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.orange.shade300,
                    child: const Text("UN", style: TextStyle(fontSize: 60, color: Colors.white,),)
                  ),
                  const Text("User Name", style: TextStyle(color: Colors.white, fontSize: 40),)
                ],
              ),
            ),
          ),


          ...List.generate( views.length , (index) => ListTile(
              leading: const Icon(Icons.account_circle_sharp, size: 28,),
              title: Text("Go To ${views[index].viewName}"),
              onTap: () => Navigator.pushReplacement(
                context, 
                CupertinoPageRoute(builder: (_) => views[index].toNext)),
          )),

          Expanded(child: Container()),

          ListTile(
            onTap: () => Navigator.pushAndRemoveUntil(
                context, 
                MaterialPageRoute( builder: ( _ ) => const InitMenu() ),
                (route)=> false
            ),
            leading: const Icon(Icons.home),
            title: const Text("IR AL HOME"),
          )

        ],
      ),
    );
  }

  void replaceCurrentStack(){}


}

class MicroModel {

  String viewName;
  Widget toNext;

  MicroModel(this.viewName , this.toNext);


}