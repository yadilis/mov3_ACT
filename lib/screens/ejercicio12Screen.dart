import 'package:flutter/material.dart';

class Ejercicio12 extends StatelessWidget {
  const Ejercicio12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ejercicio 12")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Programa para evaluar si un aspirante es apto para una entrevista de trabajo.",
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            formularioEntrevista(context),
          ],
        ),
      ),
    );
  }
}

Widget formularioEntrevista(BuildContext context) {
 TextEditingController _edad = TextEditingController();
   TextEditingController _experiencia = TextEditingController();

  return Column(
    children: [
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
        controller: _experiencia,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          label: Text("Años de experiencia laboral"),
        ),
      ),
      const SizedBox(height: 15),
      ElevatedButton(
        onPressed: () {
          mostrarResultado(context, _edad.text,_experiencia.text);
        },
        child: const Text("Evaluar"),
      ),
    ],
  );
}

void mostrarResultado(BuildContext context, String edadText, String experienciaText) {
  int edad = int.tryParse(edadText) ?? 0;
  int experiencia = int.tryParse(experienciaText) ?? 0;

  String resultado;
  if (edad >= 25 && edad <= 35 && experiencia >= 3) {
    resultado = "El aspirante puede ser seleccionado para una entrevista.";
  } else {
    resultado = "Lo siento, el aspirante no cumple con los requisitos para la entrevista.";
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
