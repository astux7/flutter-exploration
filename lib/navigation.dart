import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> with SingleTickerProviderStateMixin{
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      backgroundColor: colorScheme.surface,
      selectedItemColor: colorScheme.onSurface,
      unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
      selectedLabelStyle: textTheme.caption,
      unselectedLabelStyle: textTheme.caption,
      onTap: (value) {
        // Respond to item press.

        setState(() => _currentIndex = value);
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
    );
  }
}