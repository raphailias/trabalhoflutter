import 'package:flutter/material.dart';

class TelaInfo extends StatefulWidget {
  final String texto;
  final String imageurl;
  final String descricao;
  final String nota;
  final String membros;

  const TelaInfo(
      {Key? key,
      required this.texto,
      required this.imageurl,
      required this.descricao,
      required this.membros,
      required this.nota})
      : super(key: key);

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
                        onPressed: () => null, child: Text('Voltar'))),
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
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                widget.texto,
                                                style: TextStyle(
                                                    color: Colors.white70),
                                                textAlign: TextAlign.start,
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Text('24 ep . data de iniioc',
                                                  style: TextStyle(
                                                      color: Colors.white70))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 48),
                                      child: Column(
                                        children: [
                                          Text('Score',
                                              style: TextStyle(
                                                  color: Colors.white70)),
                                          SizedBox(
                                            height: 53,
                                          ),
                                          Text('8.09',
                                              style: TextStyle(
                                                  color: Colors.white70))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    'Review',
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Text(
                                      '''Every day, Naoto Hachiouji is teased relentlessly by Hayase Nagatoro, a first year student he meets one day in the library while working on his manga. After reading his story and seeing his awkward demeanor, she decides from that moment on to toy with him, even calling him "Senpai" in lieu of using his real name.
                
                At first, Nagatoro's relentless antics are more bothersome than anything and leave him feeling embarrassed, as he is forced to cater to her whims. However, as they spend more time together, a strange sort of friendship develops between them, and Naoto finds that life with Nagatoro can even be fun. But one thing's for sure: his days will never be dull again.
                ''',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ),
                                )
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
                            color: Colors.red,
                            child: FittedBox(
                              child: Image.network(
                                  'https://cdn.myanimelist.net/images/anime/1900/110097l.webp'),
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
