import 'package:flutter/material.dart';

class AnnadirTarea extends StatelessWidget {
  Function annadirTarea;
  AnnadirTarea({super.key, required this.annadirTarea});

  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _descripcionController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: 50,
            width: 565,
            child: TextField(
              controller: _tituloController,
              decoration: const InputDecoration(labelText: "Título:"),
            )),
        const SizedBox(height: 50, width: 50),
        SizedBox(
            height: 50,
            width: 565,
            child: TextField(
              controller: _descripcionController,
              decoration: const InputDecoration(labelText: "Descripción:"),
            )),
        ElevatedButton(onPressed: (){annadirTarea(_tituloController.text, _descripcionController.text);}, child: const Icon(Icons.add))
      ],
    );
  }
}
