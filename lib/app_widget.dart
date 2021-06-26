import 'package:animelife/Modules/TelaCadastro/tela_cadastro.dart';
import 'package:animelife/Modules/TelaInicial/navbarinf.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => TelaCadastro(),
        '/second': (context) => NavbarInf(),
      },
    );
  }
}
