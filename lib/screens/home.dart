import 'package:flutter/material.dart';
import '../tiles.dart';
import '../HeroPage.dart';


class HomeHub extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return HeroPage.withWidgets(
        [
          SkyVipTile(),
          MessageCenterTile(),
          MessageCenterTile(),
          MessageCenterTile()
        ],
      355
    );
  // return ListView(
  //   children: [
  //     HeroTile(),
  //     SkyVipTile(),
  //     MessageCenterTile()
  //   ],
  // );
}
}

