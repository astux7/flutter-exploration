// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'tiles.dart';
import 'navigation.dart';
import 'heroTile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Hub',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sky'),
        ),
        body: ListView(
          children: [
            HeroTile(),
            BillTile(),
            MessageCenterTile()
          ],
        ),
          bottomNavigationBar: BottomNavBar()
      ),
    );
  }
}

