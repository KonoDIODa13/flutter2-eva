import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContadorProvider(),
      child: ContadorApp(),
    ),
  );
}

class ContadorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ProviderEjemplo')),
        body: ContadorDisplay(),
        floatingActionButton: IncrementarButton(),
      ),
    );
  }
}

class ContadorDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contador = context.watch<ContadorProvider>().contador;
    return Center(
      child: Text('Contador: $contador', style: TextStyle(fontSize: 24)),
    );
  }
}

class IncrementarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.read<ContadorProvider>().incrementar();
      },
      child: Icon(Icons.add),
    );
  }
}

class ContadorProvider extends ChangeNotifier {
  int _contador = 5;
  int get contador => _contador;
  void incrementar() {
    _contador++;
    notifyListeners();
  }
}
