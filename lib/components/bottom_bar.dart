import 'package:flutter/material.dart';

class BottomBarCustom extends StatefulWidget {
  @override
  _BottomBarCustomState createState() => _BottomBarCustomState();

}

class _BottomBarCustomState extends State<BottomBarCustom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue.shade800,
        unselectedItemColor: Colors.grey.shade900,
        showUnselectedLabels: true,
        currentIndex: 0,
        onTap: (index) => setState(() => onTapBottomBar(index)),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_bar), label: "beers"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "profil"),
        ],
      ),
    );
  }

  void onTapBottomBar(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, "/");
        break;
      case 1:
        Navigator.pushNamed(context, "/favorites");
        break;
      case 2:
        Navigator.pushNamed(context, "/profile");
        break;
    }
  }


}