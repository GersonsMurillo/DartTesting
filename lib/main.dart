import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Operaciones basicas',
      theme:  ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 54, 196, 141)),
        useMaterial3: true,
      ),
      home:const MyHomePage(title: 'Operaciones aritmeticas basicas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int contador = 10;

  void _sumar() {
    setState(() {
      contador += 2;
    });
  }

  void _restar() {
    setState(() {
      contador -= 2;
    });
  }

  void _multiplicar() {
    setState(() {
      contador *= 2;
    });
  }

  void _dividir() {
    setState(() {
      contador ~/= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$contador',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    FloatingActionButton(
      onPressed: _sumar,
      child: Icon(Icons.add),
    ),
    FloatingActionButton(
      onPressed: _restar,
      child: Icon(Icons.remove),
    ),
    FloatingActionButton(
      onPressed: _multiplicar,
      child: Icon(Icons.close),
    ),
    FloatingActionButton(
      onPressed: _dividir,
      child: Text(
        '÷',
        style: TextStyle(fontSize: 30),
      ),
    ),
  ],
),
    );
  }
}
