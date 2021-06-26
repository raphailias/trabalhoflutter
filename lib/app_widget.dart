import 'package:animelife/Modules/TelaCadastro/tela_cadastro.dart';
import 'package:animelife/Modules/TelaInicial/navbarinf.dart';
import 'package:animelife/Modules/TelaInicial/tela_inicial.dart';
import 'package:animelife/Modules/Tela_Informacoes/telainformacao.dart';
import 'package:flutter/material.dart';

import 'Modules/telaperfil.dart/telaperfil.dart';

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
