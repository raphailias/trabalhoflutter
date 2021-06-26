import 'package:animelife/Modules/TelaInicial/navbarinf.dart';
import 'package:animelife/Modules/singleton/singletonappdata.dart';
import 'package:animelife/Modules/telarecomendacao/telarecomendacao.dart';
import 'package:flutter/material.dart';

class TelaInfo extends StatefulWidget {
  final String texto;
  final String imageurl;
  final String malid;

  const TelaInfo({
    Key? key,
    required this.texto,
    required this.imageurl,
    required this.malid,
  }) : super(key: key);

  @override
  _TelaInfoState createState() => _TelaInfoState();
}

class _TelaInfoState extends State<TelaInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 6, 10, 25),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavbarInf()),
                          );
                        },
                        child: Text('Voltar'))),
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Positioned(
                        bottom: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: MediaQuery.of(context).size.height * 0.7,
                            color: Color.fromARGB(255, 7, 15, 49),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                ),
                                SizedBox(
                                  height: 200,
                                  width: 300,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      widget.texto,
                                      softWrap: false,
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 24),
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      appData.maild = widget.malid;
                                    },
                                    child: Text('Recomendar Animes Parecidos')),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 32,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.4,
                            color: Colors.black87,
                            child: FittedBox(
                              child: Image.network(widget.imageurl),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
