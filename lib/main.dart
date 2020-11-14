
import 'package:flutter/material.dart';
import 'package:home_hub/screens/ScreenOne.dart';
import 'package:home_hub/screens/ScreenTwo.dart';


void main() => runApp(Hubs());

class Hubs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HubsState();
}
class HubsState extends State<Hubs> {
  int currentIndex = 0;
 // final _currentIndex = [HomeHub(), TvHub(), Empty(), Empty(), MarkdownVip(),];
  final _currentAppBarTitle = [null, "TV", "BB", "Mobile", null];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme
        .of(context)
        .colorScheme;
    final textTheme = Theme
        .of(context)
        .textTheme;
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/tv': (context) => SecondScreen(),
        '/bb': (context) => SecondScreen(),
        '/mobile': (context) => SecondScreen(),
        '/vip': (context) => SecondScreen()
      },

      // title: 'Hubs',
      // home: Scaffold(
      //     backgroundColor: Color(0xFFF9F9F9),
      //     appBar: null,
      //     // _currentAppBarTitle[currentIndex] == null ? null : AppBar(
      //     //  title: Text(_currentAppBarTitle[currentIndex])
      //     // ),
      //     //body: FirstScreen(),
      //     // _currentIndex[currentIndex],
      //     bottomNavigationBar: BottomNavigationBar(
      //       type: BottomNavigationBarType.fixed,
      //       currentIndex: currentIndex,
      //       backgroundColor: colorScheme.surface,
      //       selectedItemColor: colorScheme.onSurface,
      //       unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
      //       selectedLabelStyle: textTheme.caption,
      //       unselectedLabelStyle: textTheme.caption,
      //       onTap: (value) {
      //         // Respond to item press.
      //         setState(() => currentIndex = value);
      //       },
      //       items: [
      //         BottomNavigationBarItem(
      //           label: 'Home',
      //           icon: Icon(Icons.home),
      //
      //         ),
      //         BottomNavigationBarItem(
      //           label: 'TV',
      //           icon: Icon(Icons.tv),
      //
      //         ),
      //         BottomNavigationBarItem(
      //           label: 'BB',
      //           icon: Icon(Icons.network_wifi),
      //         ),
      //         BottomNavigationBarItem(
      //           label: 'Mobile',
      //           icon: Icon(Icons.mobile_friendly_outlined),
      //         ),
      //         BottomNavigationBarItem(
      //           label: 'VIP',
      //           icon: Icon(Icons.face_unlock_sharp),
      //         ),
      //       ],
      //    )
     // ),
    );
  }
}