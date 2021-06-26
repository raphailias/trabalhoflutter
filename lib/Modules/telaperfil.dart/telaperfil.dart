import 'package:flutter/material.dart';

class TelaPerfil extends StatelessWidget {
  final String nome;
  final String url;
  const TelaPerfil({Key? key, required this.nome, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 7, 15, 49),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: IconButton(
                  iconSize: 60,
                  icon: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(url),
                  ),
                  onPressed: () => null,
                ),
              ),
              Text(
                nome,
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Row(children: [
              Text(nome,
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 255, 255, 255)))
            ]),
          ),
        ],
      ),
    );
  }
}
