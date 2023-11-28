import 'package:flutter/material.dart';
import 'horizontal.dart';
import 'vertical.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey, // Especifica el color de fondo
                minimumSize: Size(200, 50), // Anchura y altura mínimas del botón
                fixedSize: Size(200, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => vertical()),
                );
              },
              child: Text('Vertical'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey, // Especifica el color de fondo
                minimumSize: Size(200, 50), // Anchura y altura mínimas del botón
                fixedSize: Size(200, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => horizontal()),
                );
              },
              child: Text('Horizontal'),
            ),

          ],
        ),
      ),
    );
  }
}
