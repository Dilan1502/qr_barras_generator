import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> options = [
    {
      'title': 'codigo QR',
      'route': '/codigoqr',
      'icon': Icons.qr_code,
    },
    {
      'title': 'codigo de Barras',
      'route': '/codigobarras',
      'icon': Icons.qr_code,
    },
    {
      'title': 'Generador del codigo QR',
      'route': '/generadorqr',
      'icon': Icons.qr_code_scanner,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pagina principal'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.amber, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2023/05/19/14/06/ai-generated-8004661_1280.jpg'), // Ruta de la imagen
              ),
              SizedBox(height: 16),
              Text(
                'Bienvenidos a la pagina principal',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 32),
              ListView.builder(
                shrinkWrap: true,
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, options[index]['route']);
                      },
                      leading: Icon(options[index]['icon']),
                      title: Text(options[index]['title']),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
