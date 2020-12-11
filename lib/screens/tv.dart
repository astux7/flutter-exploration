import 'package:flutter/material.dart';
import '../tiles.dart';
import '../navigation.dart';

class TvHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("TV Screen"),
      ),
      body: ListView(
            children: [
              SkyBoxTile()
            ],
        ),
        bottomNavigationBar: BottomNavBar()

    );
  }
}
