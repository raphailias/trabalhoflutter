import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final double? toolbarHeight;
  final String nick;
  final String url;
  TopBarWidget(
      {Key? key, this.toolbarHeight, required this.nick, required this.url})
      : preferredSize = Size.fromHeight((toolbarHeight ?? kToolbarHeight) + 16),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: TextButton(onPressed: () => null, child: Text('Sair'))),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  iconSize: 60,
                  icon: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(url),
                  ),
                  onPressed: () => null,
                ),
                Text(
                  'Youkoso, ' + nick,
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Container(
//         margin: const EdgeInsets.all(32),
//         height: 128,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               alignment: Alignment.topLeft,
//               width: 48,
//               height: 48,
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                       image: NetworkImage(
//                           'https://cdn.myanimelist.net/images/userimages/5129181.jpg?t=1619399400'))),
//             ),
//             Container(
//               margin: const EdgeInsets.fromLTRB(32, 0, 0, 0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Text(
//                     "Bom dia",
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                   Text("raphailias")
//                 ],
//               ),
//             )
//           ],
//         ));
