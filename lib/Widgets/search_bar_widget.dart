import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Pesquisar Anime',
            suffixIcon: IconButton(
              icon: Icon(FontAwesome.sliders),
              onPressed: () {},
            )),
      ),
    );
  }
}
