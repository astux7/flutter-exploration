import 'package:flutter/material.dart';
import '../tiles.dart';
import '../screens/hero_page.dart';
import '../navigation.dart';

class HomeHub extends StatelessWidget {
@override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
      title: Text("HOME Screen"),
  ),
  body: ListView(
  children: [
          SkyVipTile(),
          BillTile(),
          MessageCenterTile(),
          BillTile(),
          MessageCenterTile(),
          BillTile(),
          MessageCenterTile()
        ],


  ),
      bottomNavigationBar: BottomNavBar());

}
}

