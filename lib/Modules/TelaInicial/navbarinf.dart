import 'package:animelife/Modules/TelaCalendario/tab.dart';
import 'package:animelife/Modules/TelaInicial/tela_inicial.dart';
import 'package:animelife/Modules/teladev/teladev.dart';
import 'package:animelife/Modules/telarecomendacao/telarecomendacao.dart';
import 'package:flutter/material.dart';

void main() => runApp(const NavbarInf());

class NavbarInf extends StatelessWidget {
  const NavbarInf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle estilo =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    TelaInicial(),
    TabBarteste(),
    TelaRecomendacao(),
    TelaDart()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicial',
            backgroundColor: Color.fromARGB(255, 6, 10, 25),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_sharp),
            label: 'Calendário',
            backgroundColor: Color.fromARGB(255, 6, 10, 25),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_sharp),
            label: 'Recomendações',
            backgroundColor: Color.fromARGB(255, 6, 10, 25),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_emotions_sharp),
            label: 'Devs',
            backgroundColor: Color.fromARGB(255, 6, 10, 25),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 37, 114, 201),
        onTap: _onItemTapped,
      ),
    );
  }
}
