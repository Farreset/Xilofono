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
              buildButton(Colors.red, 'Do', 'note1.wav'),
              buildButton(Colors.orange, 'Re', 'note2.wav'),
              buildButton(Colors.yellow, 'Mi', 'note3.wav'),
              buildButton(Colors.green, 'Fa', 'note4.wav'),
              buildButton(Colors.lightBlue, 'Sol', 'note5.wav'),
              buildButton(Colors.blueAccent, 'La', 'note6.wav'),
              buildButton(Colors.purple, 'Si', 'note7.wav'),
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
    onPressed: () async {
      final player = AudioPlayer();
      await player.play(AssetSource('sounds/'+ sonido));
        },

    );
  }
  // void _playSound(String soundUrl) async {
  //   // Asegúrate de importar el paquete audioplayers y tener una instancia de AudioPlayer.
  //
  //   await player.play(UrlSource(soundUrl));
  //
  //
  // }
}