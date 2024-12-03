import 'package:flutter/material.dart';

class Carta extends StatefulWidget {
  String titulo;
  String descripcion;
  bool estado;

  Carta({
    super.key,
    required this.titulo,
    required this.descripcion,
    required this.estado,
  });

  @override
  State<Carta> createState() => _CartaState();
}

class _CartaState extends State<Carta> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Card(
            child: Text(
                "Titulo: ${widget.titulo}, Descripción: ${widget.descripcion}",
                style: widget.estado
                    ? const TextStyle(decoration: TextDecoration.lineThrough)
                    : const TextStyle(decoration: TextDecoration.none))),
        DropdownButton(
          items: const [
            DropdownMenuItem(value: false, child: Text("Pendiente")),
            DropdownMenuItem(value: true, child: Text("Completado")),
          ],
          onChanged: onChanged,
          hint: const Text('Selecciona una opción'),
        )
      ],
    );
  }

  void onChanged(bool? value) {
    setState(() {
      widget.estado = value!;
    });
  }
}
