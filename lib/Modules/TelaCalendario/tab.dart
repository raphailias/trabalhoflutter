import 'package:animelife/Widgets/anime_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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

class TabBarteste extends StatelessWidget {
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
                  StaggeredGridView.countBuilder(
                      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => AnimeCardWidget(
                            nome: nome[index],
                            url: url[index],
                          )),
                  StaggeredGridView.countBuilder(
                      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => AnimeCardWidget(
                            nome: nome[index],
                            url: url[index],
                          )),
                  StaggeredGridView.countBuilder(
                      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => AnimeCardWidget(
                            nome: nome[index],
                            url: url[index],
                          )),
                  StaggeredGridView.countBuilder(
                      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => AnimeCardWidget(
                            nome: nome[index],
                            url: url[index],
                          )),
                  StaggeredGridView.countBuilder(
                      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => AnimeCardWidget(
                            nome: nome[index],
                            url: url[index],
                          )),
                  StaggeredGridView.countBuilder(
                      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => AnimeCardWidget(
                            nome: nome[index],
                            url: url[index],
                          )),
                  StaggeredGridView.countBuilder(
                      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => AnimeCardWidget(
                            nome: nome[index],
                            url: url[index],
                          ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
