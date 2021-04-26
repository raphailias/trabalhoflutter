import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.network(
            'https://cdn.myanimelist.net/images/userimages/5129181.jpg?t=1619399400',
            width: 48,
            height: 48,
          )),
      title: Text(
        "Bom dia",
        style: TextStyle(color: Colors.grey),
      ),
      subtitle: Text("raphailias"),
      trailing: IconButton(
        icon: Icon(Icons.menu),
        onPressed: null,
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
