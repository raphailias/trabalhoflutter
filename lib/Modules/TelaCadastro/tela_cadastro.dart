import 'package:flutter/material.dart';

class TelaCadastro extends StatelessWidget {
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
                        decoration: InputDecoration(
                            hintText: 'Digite seu usuário do MAL'),
                      ),
                      TextButton(
                          onPressed: () {},
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
