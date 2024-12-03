import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(
    ScopedModel<ContadorModel>(
      model: ContadorModel(),
      child: ContadorApp(),
    ),
  );
}

class ContadorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ScopedModel Ejemplo')),
        body: ContadorDisplay(),
        floatingActionButton: IncrementarButton(),
      ),
    );
  }
}

class ContadorDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContadorModel>(
      builder: (context, child, model) {
        return Center(
          child: Text('Contador: ${model.contador}',
              style: TextStyle(fontSize: 24)),
        );
      },
    );
  }
}

class IncrementarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContadorModel>(
      builder: (context, child, model) {
        return FloatingActionButton(
          onPressed: model.incrementar,
          child: Icon(Icons.add),
        );
      },
    );
  }
}

class ContadorModel extends Model {
  int _contador = 5;

  int get contador => _contador;

  void incrementar() {
    _contador++;

    notifyListeners();
  }
}
