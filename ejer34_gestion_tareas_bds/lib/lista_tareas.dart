import 'package:ejer34_gestion_tareas_bds/carta.dart';
import 'package:ejer34_gestion_tareas_bds/tarea.dart';
import 'package:flutter/material.dart';

class ListaTareas extends StatefulWidget {
  List<Tarea> listaTareas;
  ListaTareas({super.key, required this.listaTareas});

  @override
  State<ListaTareas> createState() => _ListaTareasState();
}

class _ListaTareasState extends State<ListaTareas> {
  var estado = false;



  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: widget.listaTareas.isEmpty
            ? const Center(child: Text("Hello world"))
            : ListView.builder(
                itemCount: widget.listaTareas.length,
                itemBuilder: (context, index) {
                  //return Text("Titulo: ${listaTareas[index].titulo}, Descripción: ${listaTareas[index].descripcion}" );
                  return Column(
                    children: [
                      Carta(
                          titulo: widget.listaTareas[index].titulo,
                          descripcion: widget.listaTareas[index].descripcion,
                          estado: estado,
                          ),
                    ],
                  );
                }));
  }
}
