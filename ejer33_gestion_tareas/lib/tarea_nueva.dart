import 'package:ejer33_gestion_tareas/proveedor_tareas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TareaNueva extends StatelessWidget {
  TareaNueva({super.key});

  final TextEditingController _tareaController = TextEditingController();

  void annadirTarea(BuildContext context) {
    final tarea = _tareaController.text;
    if (tarea.isNotEmpty) {
      Provider.of<ProveedorTareas>(context, listen: false).addTarea(tarea);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Añada una nueva Tarea"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                  controller: _tareaController,
                  decoration: const InputDecoration(
                      labelText: "Nueva Tarea", border: OutlineInputBorder())),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    annadirTarea(context);
                  },
                  child: const Text("Añadir"))
            ],
          ),
        ));
  }
}
