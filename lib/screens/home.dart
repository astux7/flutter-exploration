import 'package:flutter/material.dart';
import '../tiles.dart';
import '../heroTile.dart';


class HomeHub extends StatelessWidget {
@override
  Widget build(BuildContext context) {
  return ListView(
    children: [
      HeroTile(),
      BillTile(),
     // MessageCenterTile()
    ],
  );
}
}

