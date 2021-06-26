import 'package:animelife/Widgets/devcard.dart';
import 'package:flutter/material.dart';

class TelaDart extends StatelessWidget {
  const TelaDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ListView(
          children: [
            DevCard(
                nick: 'xAssassinPig',
                anime1: 'Shimoneta',
                anime2: 'HSDxD',
                anime3: 'Zton Jingai Animation',
                imgNick:
                    'https://cdn.myanimelist.net/images/userimages/5129181.jpg?t=1624655400',
                imgAnime1:
                    'https://cdn.myanimelist.net/images/anime/11/72066l.webp',
                imgAnime2:
                    'https://cdn.myanimelist.net/images/anime/1331/111940l.webp',
                imgAnime3:
                    'https://image.tmdb.org/t/p/w300/v0Ld7mWf6pJtEpNzKZ7yWe0j6qp.jpg'),
            DevCard(
                nick: 'Yasuha-Ya',
                anime1: 'Full Dive RPG',
                anime2: 'Kakushi Dungeon',
                anime3: 'Goblin Slayer',
                imgNick:
                    'https://cdn.myanimelist.net/images/userimages/4043209.jpg?t=1624650000',
                imgAnime1:
                    'https://cdn.myanimelist.net/images/anime/1357/113277l.webp',
                imgAnime2:
                    'https://cdn.myanimelist.net/images/anime/1088/109121.webp',
                imgAnime3:
                    'https://cdn.myanimelist.net/images/anime/1719/95621l.webp'),
            DevCard(
                nick: 'Goleir0Bruno',
                anime1: 'Youjo Senki',
                anime2: 'Trinity Seven',
                anime3: 'Senran Kagura',
                imgNick:
                    'https://images-ext-2.discordapp.net/external/UG6fK8wo9hMhzFKBw2M40ug4RGGz-4vjGoNJK9Oq8iw/https/i.imgur.com/f018beB.jpg?width=676&height=676',
                imgAnime1:
                    'https://cdn.myanimelist.net/images/anime/5/82890l.webp',
                imgAnime2:
                    'https://cdn.myanimelist.net/images/anime/12/67795l.webp',
                imgAnime3:
                    'https://cdn.myanimelist.net/images/anime/5/45640l.webp'),
            DevCard(
                nick: 'DD412',
                anime1: 'Azur Lane',
                anime2: "Girl's Frontline",
                anime3: 'Priconne',
                imgNick:
                    'https://images-ext-1.discordapp.net/external/AewZQOS4NawauP9TFoputrhfSg_AihNviiqWDSubU1A/https/i.imgur.com/u1XXNCM.png',
                imgAnime1:
                    'https://cdn.myanimelist.net/images/anime/1106/111620.jpg',
                imgAnime2:
                    'https://cdn.myanimelist.net/images/anime/1225/102606.jpg',
                imgAnime3:
                    'https://cdn.myanimelist.net/images/anime/1810/106070.jpg'),
          ],
        ),
      ),
    );
  }
}
