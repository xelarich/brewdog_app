
import 'package:brewdog_app/colors/colors.dart';
import 'package:brewdog_app/ui/beers_page.dart';
import 'package:flutter/material.dart';

import 'colors/colors.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: white,
        ),
        initialRoute: '/',
        routes: {'/': (context) => const BeersPage()});
  }
}

