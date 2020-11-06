import 'package:flutter/material.dart';
import 'package:home_hub/screens/empty.dart';
import 'package:home_hub/screens/home.dart';
import 'package:home_hub/screens/tv.dart';
import 'package:home_hub/screens/vip.dart';
//import 'package:lint/analysis_options.yaml';


void main() => runApp(Hubs());

class Hubs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HubsState();
}
class HubsState extends State<Hubs> {
  int currentIndex = 0;
  final _currentIndex = [HomeHub(), TvHub(), Empty(), Empty(), VipHub()];
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: 'Hubs',
      home: Scaffold(
        body: _currentIndex[currentIndex],
        bottomNavigationBar:  BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          backgroundColor: colorScheme.surface,
          selectedItemColor: colorScheme.onSurface,
          unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
          selectedLabelStyle: textTheme.caption,
          unselectedLabelStyle: textTheme.caption,
          onTap: (value) {
            // Respond to item press.

            setState(() => currentIndex = value);
          },
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),

            ),
            BottomNavigationBarItem(
              label: 'TV',
              icon: Icon(Icons.tv),

            ),
            BottomNavigationBarItem(
              label: 'BB',
              icon: Icon(Icons.network_wifi),
            ),
            BottomNavigationBarItem(
              label: 'Mobile',
              icon: Icon(Icons.mobile_friendly_outlined),
            ),
            BottomNavigationBarItem(
              label: 'VIP',
              icon: Icon(Icons.face_unlock_sharp),
            ),
          ],
        )
        ),
      );
  }
}