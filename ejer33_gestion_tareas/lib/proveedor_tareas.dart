import 'package:flutter/material.dart';

class ProveedorTareas extends ChangeNotifier {
  final List<String> _tareas = []; // el '_' porque es un atributo privado.
  List<String> get tareas => _tareas;

  void addTarea(String tarea) {
    _tareas.add(tarea);
    notifyListeners(); // Notifica a los widgets que dependan de este modelo.
  }
}
