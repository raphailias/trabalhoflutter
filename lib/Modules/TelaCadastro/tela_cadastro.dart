import 'package:animelife/Modules/singleton/singletonappdata.dart';
import 'package:flutter/material.dart';

class TelaCadastro extends StatefulWidget {
  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  late String value;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                    child: Text(
                  "Bem vindo ao AnimeLife",
                  style: TextStyle(fontSize: 24),
                )),
                flex: 1,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextField(
                        onChanged: (text) {
                          value = text;
                        },
                        decoration: InputDecoration(
                            hintText: 'Digite seu usuário do MAL'),
                      ),
                      TextButton(
                          onPressed: () {
                            appData.nick = value;
                            Navigator.pushNamed(context, '/second');
                          },
                          child: Text(
                            "Começar!!!",
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
