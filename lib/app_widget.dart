import 'package:animelife/Modules/TelaInicial/navbarinf.dart';
import 'package:animelife/Modules/Tela_Informacoes/telainformacao.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TelaInfo(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
