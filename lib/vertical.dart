import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



class vertical extends StatelessWidget {
  const vertical({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xilofono',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xilofono'),
        ),
        body: Center(
          child: Wrap( // coloca filas o columnas en función del espacio disponible
            direction: Axis.vertical, // Indica que la dirección es vertical
            spacing: 16.0, // Espacio entre los botones
            runSpacing: 16.0, // Espacio entre las filas de botones
            children: [ // aqui se crean todos los hijos para despues passarlos
              buildButton(Colors.red, 'Do', 'sounds/note1.wav'),
              buildButton(Colors.orange, 'Re', 'sounds/note2.wav'),
              buildButton(Colors.yellow, 'Mi', 'sounds/note3.wav'),
              buildButton(Colors.green, 'Fa', 'sounds/note4.wav'),
              buildButton(Colors.lightBlue, 'Sol', 'sounds/note5.wav'),
              buildButton(Colors.blueAccent, 'La', 'sounds/note6.wav'),
              buildButton(Colors.purple, 'Si', 'sounds/note7.wav'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(Color color, String texto, String sonido) { //Aqio se passan los childrens dependiendo de la classe, del texto y del asset
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color, // variable de color
        minimumSize: Size(200, 50),
        fixedSize: Size(200, 50),
      ),
      child: Text(texto), // variable de texto
      onPressed: () {
        _playSound(sonido); // variable del asset
      },
    );
  }

  void _playSound(String sonido) {
    player.play(sonido);
  }
}