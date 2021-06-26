import 'package:flutter/material.dart';

class DevCard extends StatelessWidget {
  final String nick;
  final String imgNick;
  final String anime1;
  final String anime2;
  final String anime3;
  final String imgAnime1;
  final String imgAnime2;
  final String imgAnime3;
  const DevCard(
      {Key? key,
      required this.nick,
      required this.anime1,
      required this.anime2,
      required this.anime3,
      required this.imgNick,
      required this.imgAnime1,
      required this.imgAnime2,
      required this.imgAnime3})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        height: 250,
        width: double.maxFinite,
        child: Card(
            elevation: 5,
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: [
                  Row(
                    children: [
                      ClipRRect(
                        child: Image.network(
                          imgNick,
                          width: 75,
                          height: 75,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(nick),
                      )
                    ],
                  ),
                  Row(children: <Widget>[
                    Expanded(
                        flex: 3,
                        child: Column(
                          children: [Text("Recomenda:")],
                        )),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            Text(anime1),
                            ClipRRect(
                              child: Image.network(
                                imgAnime1,
                                width: 180,
                                height: 90,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            Text(anime2),
                            ClipRRect(
                              child: Image.network(
                                imgAnime2,
                                width: 180,
                                height: 90,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            Text(anime3),
                            ClipRRect(
                              child: Image.network(
                                imgAnime3,
                                width: 180,
                                height: 90,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ])
                ]))));
  }
}
