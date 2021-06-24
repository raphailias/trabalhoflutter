import 'package:animelife/Modules/repositories/animecalendario.dart';
import 'package:animelife/Widgets/anime_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:animelife/Modules/repositories/anime_repository.dart';

class TabBarteste extends StatefulWidget {
  @override
  _TabBartesteState createState() => _TabBartesteState();
}

class _TabBartesteState extends State<TabBarteste> {
  final repository = AnimeRepository();
  final List<String> nome = [];
  final List<String> url = [];
  final List<String> nome1 = [];
  final List<String> url1 = [];
  final List<String> nome2 = [];
  final List<String> url2 = [];
  final List<String> nome3 = [];
  final List<String> url3 = [];
  final List<String> nome4 = [];
  final List<String> url4 = [];
  final List<String> nome5 = [];
  final List<String> url5 = [];
  final List<String> nome6 = [];
  final List<String> url6 = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 7,
        child: Container(
          color: Color.fromARGB(255, 7, 15, 49),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.white38,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(51),
                    color: Colors.white10),
                tabs: [
                  Tab(text: "Segunda-feira"),
                  Tab(text: "Terça-feira"),
                  Tab(text: "Quarta-feira"),
                  Tab(text: "Quinta-feira"),
                  Tab(text: "Sexta-feira"),
                  Tab(text: "Sabado"),
                  Tab(text: "Domingo"),
                ],
              ),
              title: Text(
                'Animes da Semana',
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBarView(
                children: [
                  FutureBuilder<AnimeCalendario>(
                      future: repository.fetchCalendario(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot.hasData) {
                          var anime = snapshot.data!.monday;

                          for (var i = 0; i < anime!.length; i++) {
                            nome.add(anime.elementAt(i).title.toString());
                            url.add(anime.elementAt(i).imageUrl.toString());
                          }
                          return StaggeredGridView.countBuilder(
                              staggeredTileBuilder: (index) =>
                                  StaggeredTile.fit(2),
                              crossAxisCount: 4,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              itemCount: 8,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => AnimeCardWidget(
                                    nome: nome[index],
                                    url: url[index],
                                  ));
                        }
                        return Text('erro');
                      }),
                  FutureBuilder<AnimeCalendario>(
                      future: repository.fetchCalendario(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot.hasData) {
                          var anime = snapshot.data!.tuesday;

                          for (var i = 0; i < anime!.length; i++) {
                            nome1.add(anime.elementAt(i).title.toString());
                            url1.add(anime.elementAt(i).imageUrl.toString());
                          }
                          return StaggeredGridView.countBuilder(
                              staggeredTileBuilder: (index) =>
                                  StaggeredTile.fit(2),
                              crossAxisCount: 4,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              itemCount: 8,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => AnimeCardWidget(
                                    nome: nome[index],
                                    url: url[index],
                                  ));
                        }
                        return Text('erro');
                      }),
                  FutureBuilder<AnimeCalendario>(
                      future: repository.fetchCalendario(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot.hasData) {
                          var anime = snapshot.data!.wednesday;

                          for (var i = 0; i < anime!.length; i++) {
                            nome2.add(anime.elementAt(i).title.toString());
                            url2.add(anime.elementAt(i).imageUrl.toString());
                          }
                          return StaggeredGridView.countBuilder(
                              staggeredTileBuilder: (index) =>
                                  StaggeredTile.fit(2),
                              crossAxisCount: 4,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              itemCount: 8,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => AnimeCardWidget(
                                    nome: nome[index],
                                    url: url[index],
                                  ));
                        }
                        return Text('erro');
                      }),
                  FutureBuilder<AnimeCalendario>(
                      future: repository.fetchCalendario(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot.hasData) {
                          var anime = snapshot.data!.thursday;

                          for (var i = 0; i < anime!.length; i++) {
                            nome3.add(anime.elementAt(i).title.toString());
                            url3.add(anime.elementAt(i).imageUrl.toString());
                          }
                          return StaggeredGridView.countBuilder(
                              staggeredTileBuilder: (index) =>
                                  StaggeredTile.fit(2),
                              crossAxisCount: 4,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              itemCount: 8,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => AnimeCardWidget(
                                    nome: nome[index],
                                    url: url[index],
                                  ));
                        }
                        return Text('erro');
                      }),
                  FutureBuilder<AnimeCalendario>(
                      future: repository.fetchCalendario(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot.hasData) {
                          var anime = snapshot.data!.friday;

                          for (var i = 0; i < anime!.length; i++) {
                            nome4.add(anime.elementAt(i).title.toString());
                            url4.add(anime.elementAt(i).imageUrl.toString());
                          }
                          return StaggeredGridView.countBuilder(
                              staggeredTileBuilder: (index) =>
                                  StaggeredTile.fit(2),
                              crossAxisCount: 4,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              itemCount: 8,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => AnimeCardWidget(
                                    nome: nome[index],
                                    url: url[index],
                                  ));
                        }
                        return Text('erro');
                      }),
                  FutureBuilder<AnimeCalendario>(
                      future: repository.fetchCalendario(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot.hasData) {
                          var anime = snapshot.data!.saturday;

                          for (var i = 0; i < anime!.length; i++) {
                            nome5.add(anime.elementAt(i).title.toString());
                            url5.add(anime.elementAt(i).imageUrl.toString());
                          }
                          return StaggeredGridView.countBuilder(
                              staggeredTileBuilder: (index) =>
                                  StaggeredTile.fit(2),
                              crossAxisCount: 4,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              itemCount: 8,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => AnimeCardWidget(
                                    nome: nome[index],
                                    url: url[index],
                                  ));
                        }
                        return Text('erro');
                      }),
                  FutureBuilder<AnimeCalendario>(
                      future: repository.fetchCalendario(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot.hasData) {
                          var anime = snapshot.data!.sunday;

                          for (var i = 0; i < anime!.length; i++) {
                            nome6.add(anime.elementAt(i).title.toString());
                            url6.add(anime.elementAt(i).imageUrl.toString());
                          }
                          return StaggeredGridView.countBuilder(
                              staggeredTileBuilder: (index) =>
                                  StaggeredTile.fit(2),
                              crossAxisCount: 4,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              itemCount: 8,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => AnimeCardWidget(
                                    nome: nome[index],
                                    url: url[index],
                                  ));
                        }
                        return Text('erro');
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
