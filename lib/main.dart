import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
          title: Text('My App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Especifica el color de fondo
                  minimumSize: Size(200, 50), // Anchura y altura mínimas del botón
                  fixedSize: Size(200, 50),
                ),
                child: Text("Play Sound 1"),
                onPressed: () {
                  _playSound('sounds/note1.wav');
                },
              ),
              SizedBox(height: 16), // Agrega un espacio entre los botones
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Especifica el color de fondo
                  minimumSize: Size(200, 50), // Anchura y altura mínimas del botón
                  fixedSize: Size(200, 50),
                ),
                child: Text("Play Sound 2"),
                onPressed: () {
                  _playSound('sounds/note2.wav');
                },
              ),
              SizedBox(height: 16), // Agrega un espacio entre los botones
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow, // Especifica el color de fondo
                  minimumSize: Size(200, 50), // Anchura y altura mínimas del botón
                  fixedSize: Size(200, 50),
                ),
                child: Text("Play Sound 3"),
                onPressed: () {
                  _playSound('sounds/note3.wav');
                },
              ),
              SizedBox(height: 16), // Agrega un espacio entre los botones
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Especifica el color de fondo
                  minimumSize: Size(200, 50), // Anchura y altura mínimas del botón
                  fixedSize: Size(200, 50),
                ),
                child: Text("Play Sound 4"),
                onPressed: () {
                  _playSound('sounds/note4.wav');

                },
              ),
              SizedBox(height: 16), // Agrega un espacio entre los botones
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Especifica el color de fondo
                  minimumSize: Size(200, 50), // Anchura y altura mínimas del botón
                  fixedSize: Size(200, 50),
                ),
                child: Text("Play Sound 4"),
                onPressed: () {
                  _playSound('sounds/note4.wav');
                },
              ),
              SizedBox(height: 16), // Agrega un espacio entre los botones
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey, // Especifica el color de fondo
                  minimumSize: Size(200, 50), // Anchura y altura mínimas del botón
                  fixedSize: Size(200, 50),
                ),
                child: Text("Play Sound 5"),
                onPressed: () {
                  _playSound('sounds/note5.wav');
                },
              ),
              SizedBox(height: 16), // Agrega un espacio entre los botones
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple, // Especifica el color de fondo
                  minimumSize: Size(200, 50), // Anchura y altura mínimas del botón
                  fixedSize: Size(200, 50),
                ),
                child: Text("Play Sound 6"),
                onPressed: () {
                  _playSound('sounds/note6.wav');
                },
              ),
              SizedBox(height: 16), // Agrega un espacio entre los botones
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                  minimumSize: Size(200, 50), // Anchura y altura mínimas del botón
                  fixedSize: Size(200, 50),   // Especifica el color de fondo
                ),

                child: Text("Play Sound 7"),
                onPressed: () {
                  _playSound('sounds/note7.wav');
                },
              ),
              // Puedes agregar más botones según sea necesario
            ],
          ),
        ),
      ),
    );
  }

  void _playSound(String soundPath) {
    player.play(soundPath);
  }
}