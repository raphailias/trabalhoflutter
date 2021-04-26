import 'package:animelife/Widgets/anime_card_widget.dart';
import 'package:flutter/cupertino.dart';

final List<String> nome = <String>[
  'Kaifuku Jutsushi no Yarinaoshi',
  'Kaifuku Jutsushi no Yarinaoshi',
  'Kaifuku Jutsushi no Yarinaoshi',
  'Kaifuku Jutsushi no Yarinaoshi'
];
final List<String> url = <String>[
  'https://myanimelist.net/anime/40750/Kaifuku_Jutsushi_no_Yarinaoshi/pics',
  'https://myanimelist.net/anime/40750/Kaifuku_Jutsushi_no_Yarinaoshi/pics',
  'https://myanimelist.net/anime/40750/Kaifuku_Jutsushi_no_Yarinaoshi/pics',
  'https://myanimelist.net/anime/40750/Kaifuku_Jutsushi_no_Yarinaoshi/pics'
];

class AnimeRowWidget extends StatelessWidget {
  const AnimeRowWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Animes Populares'),
          ListView.builder(
            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
            itemCount: nome.length,
            itemBuilder: (context, index) => AnimeCardWidget(
              nome: nome[index],
              url: url[index],
            ),
          )
        ],
      ),
    );
  }
}
