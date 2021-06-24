import 'package:flutter/material.dart';

class AnimeCardWidget extends StatelessWidget {
  final String url;
  final String nome;
  const AnimeCardWidget({Key? key, required this.url, required this.nome})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: GestureDetector(
        onTap: () => null,
        child: Card(
          color: Color.fromARGB(0, 7, 15, 49),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(url),
              ),
              Text(
                nome,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
