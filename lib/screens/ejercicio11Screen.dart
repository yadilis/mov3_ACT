import 'package:flutter/material.dart';

class Ejercicio11 extends StatelessWidget {
  const Ejercicio11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ejercicio 11")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Programa para determinar si un estudiante es elegible para una beca universitaria.",
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            formularioBeca(context),
          ],
        ),
      ),
    );
  }
}

Widget formularioBeca(BuildContext context) {
  TextEditingController _promedio = TextEditingController();
  TextEditingController _ingreso = TextEditingController();

  return Column(
    children: [
      TextField(
        controller: _promedio,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          label: Text("Promedio de Calificaciones"),
        ),
      ),
      const SizedBox(height: 10),
      TextField(
        controller: _ingreso,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          label: Text("Ingreso mensual familiar"),
        ),
      ),
      const SizedBox(height: 15),
      ElevatedButton(
        onPressed: () {
          mostrarResultado(context, _promedio.text, _ingreso.text);
        },
        child: const Text("Evaluar Elegibilidad"),
      ),
    ],
  );
}

void mostrarResultado(BuildContext context, String promedioText, String ingresoText) {
  double promedio = double.tryParse(promedioText) ?? 0;
  double ingreso = double.tryParse(ingresoText) ?? double.infinity;

  String resultado;
  if (promedio >= 9 && ingreso < 3000) {
    resultado = "El estudiante aplica para la beca.";
  } else {
    resultado = "El estudiante no aplica para la beca.";
  }

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Resultado de la Evaluación"),
      content: Text(resultado),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cerrar"),
        ),
      ],
    ),
  );
}
