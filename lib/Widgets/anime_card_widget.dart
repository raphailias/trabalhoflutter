import 'package:flutter/material.dart';

class AnimeCardWidget extends StatelessWidget {
  final String url;
  final String nome;
  const AnimeCardWidget({Key key, @required this.url, @required this.nome})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 50,
      child: GestureDetector(
        onTap: () => null,
        child: Card(
          child: Column(
            children: [Image.network(url), Text(nome)],
          ),
        ),
      ),
    );
  }
}
