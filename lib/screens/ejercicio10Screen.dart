import 'package:flutter/material.dart';

class Ejercicio10 extends StatelessWidget {
  const Ejercicio10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ejercicio 10")),
      body: Column(
        children: [
           Text("Programa para evaluar si un estudiante puede participar en un intercambio estudiantil.", style: TextStyle(fontSize: 24)),
           intercambio(context)
         
        ],
      ),
    );
  }
}

Widget intercambio(context) {
  TextEditingController _edad = TextEditingController();
  TextEditingController _nivel = TextEditingController();
  TextEditingController _promedio = TextEditingController();

  return Column(
    children: [
      const Text("Evaluar Intercambio Estudiantil", style: TextStyle(fontSize: 22)),
      const SizedBox(height: 10),

      TextField(
        controller: _edad,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          label: Text("Edad"),
        ),
      ),
      const SizedBox(height: 10),

      TextField(
        controller: _nivel,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          label: Text("Nivel de Inglés"),
        ),
      ),
      const SizedBox(height: 10),

      TextField(
        controller: _promedio,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          label: Text("Promedio"),
        ),
      ),
      const SizedBox(height: 15),

      ElevatedButton(
        onPressed: () {
          mensajeEvaluacion(context, _edad.text, _nivel.text, _promedio.text);
        },
        child: const Text("Evaluar"),
      ),
    ],
  );
}

String evaluarEstudiante(String _edad, String _nivel, String _promedio) {
  int edad = int.parse(_edad);
  double promedio = double.parse(_promedio);
  String nivel = _nivel.toLowerCase();

  if ((edad >= 16 && edad <= 25) && (nivel == "intermedio" || nivel == "avanzado") && (promedio >= 8)) {
    return "El estudiante es apto para participar en el programa de intercambio.";
  } else {
    return "Lo siento, el estudiante no cumple con los requisitos para el programa de intercambio.";
  }
}

void mensajeEvaluacion(context, String edad, String nivel, String promedio) {
  String resultado = evaluarEstudiante(edad, nivel, promedio);

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Resultado"),
      content: Text(resultado),
      actions: [
        FilledButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cerrar"),
        ),
      ],
    ),
  );
}