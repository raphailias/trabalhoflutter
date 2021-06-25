import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TelaCadastro extends StatefulWidget {
  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  String value = '';

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

  void Addnick(String valor) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('nick') == null) {
      prefs.setString('nick', valor);
    } else {
      prefs.setString('nick', '');
    }
  }
}
