import 'package:flutter/material.dart';

import 'Modules/TelaInicial/tela_inicial.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaInicial(),
      debugShowCheckedModeBanner: false,
    );
  }
}
