import 'package:ejer34_gestion_tareas_bds/annadir_tarea.dart';
import 'package:ejer34_gestion_tareas_bds/lista_tareas.dart';
import 'package:ejer34_gestion_tareas_bds/tarea.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Tarea> tareas = [];

  void annadirTarea(String titulo, String descripcion) {
    setState(() {
      var tarea = Tarea(titulo: titulo, descripcion: descripcion);
      tareas.add(tarea);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gestor de Tareas"),
          centerTitle: true,
        ),
        body: Column(children: [
          AnnadirTarea(annadirTarea: annadirTarea),
          ListaTareas(
            listaTareas: tareas,
          )
        ]),
      ),
    );
  }
}
