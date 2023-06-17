import 'package:flutter/material.dart';
import 'package:qrylineas/codigobarras.dart';
import 'package:qrylineas/codigoqr.dart';
import 'package:qrylineas/generadorqr.dart';
import 'package:qrylineas/principal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DILAN QR',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner:
          false, // Agrega esta línea para desactivar el banner de depuración

      routes: {
        '/': (context) => HomePage(),
        '/codigoqr': (context) => codigoqr(),
        '/codigobarras': (context) => codigobarras (),
        '/generadorqr': (context) => QrGeneratorPage(),
      },
    );
  }
}
