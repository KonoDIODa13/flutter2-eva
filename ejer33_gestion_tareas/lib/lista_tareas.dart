import 'package:ejer33_gestion_tareas/proveedor_tareas.dart';
import 'package:ejer33_gestion_tareas/tarea_nueva.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListaTareas extends StatelessWidget {
  const ListaTareas({super.key});

  void goTareaNueva(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => TareaNueva()));
  }

  @override
  Widget build(BuildContext context) {
    final proveedor = Provider.of<ProveedorTareas>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Tareas"),
        centerTitle: true,
      ),
      body: proveedor.tareas.isEmpty
          ? const Center(child: Text("Hello World"))
          : ListView.builder(
              itemCount: proveedor.tareas.length,
              itemBuilder: (context, index) {
                return 
                  ListTile(title: Text(proveedor.tareas[index]));
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          goTareaNueva(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
