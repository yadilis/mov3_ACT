import 'package:flutter/material.dart';

class Ejercicio1 extends StatelessWidget {
  const Ejercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Ejercicio1")),
      body: Column(
        children: [
          Text("Hola Mundo"),
          BackButton(),
          FilledButton(onPressed: ()=>
          Navigator.pop(context), child:Text("data"))
        ],
      ),
    );
  }
}