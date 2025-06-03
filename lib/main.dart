import 'package:app_06/screens/ejercicio10Screen.dart';
import 'package:app_06/screens/ejercicio11Screen.dart';
import 'package:app_06/screens/ejercicio12Screen.dart';
import 'package:app_06/screens/ejercicio1Screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(EjerciciosApp());

}
class EjerciciosApp extends StatelessWidget {
  const EjerciciosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Cuerpo(),);
  }
}


class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicios"),
        actions: [IconButton(onPressed: ()=>(), icon: Icon(Icons.pivot_table_chart))],
      ),
      
    body:Column(children: [
       btnEjercicio1(context),
       btnEjercicio10(context),
       btnEjercicio11(context),
       btnEjercicio12(context),
       
    ],) ,
    );
  }
}

// Botones para la NAVEGACIPON
Widget btnEjercicio1(context){
  return(
    FilledButton.tonal(onPressed: ()=>Navigator.push(
      context, MaterialPageRoute(builder: (context)=>Ejercicio1())),
     child: Text("Ejercicio1"))
  );
}

Widget btnEjercicio10(context){
  return(
    FilledButton.tonal(onPressed: ()=>Navigator.push(
      context, MaterialPageRoute(builder: (context)=>Ejercicio10())),
     child: Text("Ejercicio10"))
  );
}

Widget btnEjercicio11(context){
  return(
    FilledButton.tonal(onPressed: ()=>Navigator.push(
      context, MaterialPageRoute(builder: (context)=>Ejercicio11())),
     child: Text("Ejercicio11"))
  );
}

Widget btnEjercicio12(context){
  return(
    FilledButton.tonal(onPressed: ()=>Navigator.push(
      context, MaterialPageRoute(builder: (context)=>Ejercicio12())),
     child: Text("Ejercicio12"))
  );
}