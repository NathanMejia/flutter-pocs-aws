import 'package:flutter/material.dart';


class MyDemo extends StatelessWidget {
  const MyDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: const Text("ENVIAR SOLICITUD"),
          onPressed: (){},
        )
      ),
    );
  }
}