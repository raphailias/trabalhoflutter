import 'package:animelife/Widgets/animerowwidget.dart';
import 'package:animelife/Widgets/search_bar_widget.dart';
import 'package:animelife/Widgets/top_bar_widget.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [TopBarWidget(), SearchBarWidget()],
      ),
    );
  }
}
