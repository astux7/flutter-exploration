import 'package:flutter/material.dart';
import '../tiles.dart';
import '../screens/hero_page.dart';


class HomeHub extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return HeroPage.withWidgets(
        [
          SkyVipTile(),
          BillTile(),
          MessageCenterTile(),
          BillTile(),
          MessageCenterTile(),
          BillTile(),
          MessageCenterTile()
        ],
      355
    );
  }
}

