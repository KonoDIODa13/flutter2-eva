import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(ContadorApp());
}

class ContadorProvider extends InheritedWidget {
  final int contador;
  ContadorProvider({required this.contador, required Widget child})
      : super(child: child);
  @override
  bool updateShouldNotify(ContadorProvider oldWidget) {
    return oldWidget.contador != contador;
  }

  static ContadorProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ContadorProvider>();
  }
}

class ContadorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContadorProvider(
      contador: 5,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('Ejemplo InheritedWidget')),
          body: ContadorDisplay(),
        ),
      ),
    );
  }
}

class ContadorDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contador = ContadorProvider.of(context)?.contador ?? 0;
    return Center(child: Text('Contador: $contador'));
  }
}
