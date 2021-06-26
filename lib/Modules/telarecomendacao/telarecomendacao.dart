import 'package:animelife/Modules/repositories/anime_recomendacao.dart';
import 'package:animelife/Modules/repositories/anime_repository.dart';
import 'package:animelife/Widgets/anime_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TelaRecomendacao extends StatefulWidget {
  TelaRecomendacao({Key? key}) : super(key: key);

  @override
  _TelaRecomendacaoState createState() => _TelaRecomendacaoState();
}

class _TelaRecomendacaoState extends State<TelaRecomendacao> {
  final repository = AnimeRepository();
  final List<String> nome = [];
  final List<String> url = [];
  final List<String> malid = [];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder<Recomendacao>(
            future: repository.fetchRecomendacao(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasData) {
                var anime = snapshot.data!.recommendations;

                for (var i = 0; i < anime!.length; i++) {
                  nome.add(anime.elementAt(i).title.toString());
                  url.add(anime.elementAt(i).imageUrl.toString());
                  malid.add(anime.elementAt(i).malId.toString());
                }
                return StaggeredGridView.countBuilder(
                    staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                    crossAxisCount: 4,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    itemCount: anime.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => AnimeCardWidget(
                          nome: nome[index],
                          url: url[index],
                          malid: malid[index],
                        ));
              }
              return Text('erro');
            }));
  }
}
