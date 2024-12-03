import 'package:ejer33_gestion_tareas/proveedor_tareas.dart';
import 'package:ejer33_gestion_tareas/lista_tareas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ProveedorTareas(), child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Controlador de Tareas',
      home: ListaTareas(),
    );
  }
}
