import 'package:animelife/Widgets/animerowwidget.dart';
import 'package:animelife/Widgets/top_bar_widget.dart';
import 'package:flutter/material.dart';

final List<String> nome = <String>[
  'Kaifuku Jutsushi no Yarinaoshi',
  'Kaifuku Jutsushi no Yarinaoshi',
  'Kaifuku Jutsushi no Yarinaoshi',
  'Kaifuku Jutsushi no Yarinaoshi',
  'Kaifuku Jutsushi no Yarinaoshi',
  'Kaifuku Jutsushi no Yarinaoshi',
  'Kaifuku Jutsushi no Yarinaoshi',
  'Kaifuku Jutsushi no Yarinaoshi'
];
final List<String> url = <String>[
  'https://cdn.myanimelist.net/images/anime/1301/110018.jpg',
  'https://cdn.myanimelist.net/images/anime/1301/110018.jpg',
  'https://cdn.myanimelist.net/images/anime/1301/110018.jpg',
  'https://cdn.myanimelist.net/images/anime/1301/110018.jpg',
  'https://cdn.myanimelist.net/images/anime/1301/110018.jpg',
  'https://cdn.myanimelist.net/images/anime/1301/110018.jpg',
  'https://cdn.myanimelist.net/images/anime/1301/110018.jpg',
  'https://cdn.myanimelist.net/images/anime/1301/110018.jpg'
];

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 7, 15, 49),
      child: ListView(
        children: [
          TopBarWidget(),
          AnimeRowWidget(nome: nome, url: url, titulo: 'Animes Populares'),
          AnimeRowWidget(nome: nome, url: url, titulo: 'Animes da Temporada')
        ],
      ),
    );
  }
}
