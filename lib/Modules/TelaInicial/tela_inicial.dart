import 'package:animelife/Modules/repositories/AnimeJson.dart';
import 'package:animelife/Modules/repositories/anime_repository.dart';
import 'package:animelife/Modules/repositories/animeseason.dart';
import 'package:animelife/Modules/repositories/usuariomal.dart';
import 'package:animelife/Widgets/animerowwidget.dart';
import 'package:animelife/Widgets/top_bar_widget.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  final repository = AnimeRepository();
  final List<String> nome = [];
  final List<String> url = [];
  final List<String> malid = [];
  final List<String> nome1 = [];
  final List<String> url1 = [];
  final List<String> malid1 = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 7, 15, 49),
      child: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder<Usuario>(
                future: repository.fetchUsuario(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData) {
                    var url = snapshot.data!.imageUrl as String;
                    var nick = snapshot.data!.username as String;

                    return TopBarWidget(nick: nick, url: url);
                  }
                  return Text('erro');
                }),
            FutureBuilder<AnimeSeason>(
                future: repository.fetchTopSeason(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData) {
                    var anime = snapshot.data!.anime;

                    for (var i = 0; i < anime!.length; i++) {
                      nome1.add(anime.elementAt(i).title.toString());
                      url1.add(anime.elementAt(i).imageUrl.toString());
                      malid1.add(anime.elementAt(i).malId.toString());
                    }
                    return AnimeRowWidget(
                      nome: nome1,
                      url: url1,
                      titulo: 'Animes season',
                      malid: malid1,
                    );
                  }
                  return Text('erro');
                }),
            FutureBuilder<Anime>(
                future: repository.fetchPopulares(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData) {
                    var anime = snapshot.data!.top;

                    for (var i = 0; i < anime!.length; i++) {
                      nome.add(anime.elementAt(i).title.toString());
                      url.add(anime.elementAt(i).imageUrl.toString());
                      malid.add(anime.elementAt(i).malId.toString());
                    }
                    return AnimeRowWidget(
                      nome: nome,
                      url: url,
                      titulo: 'Animes Populares',
                      malid: malid,
                    );
                  }
                  return Text('erro');
                }),
          ],
        ),
      ),
    );
  }
}
