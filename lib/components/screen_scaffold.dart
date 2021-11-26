import 'dart:io';
import 'dart:math';

import 'package:brewdog_app/colors/colors.dart';
import 'package:brewdog_app/components/bottom_bar.dart';
import 'package:flutter/material.dart';

class ScreenScaffold extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Widget> children;
  final String activeNavBar;
  final bool activeAppBar;
  final FloatingActionButton? fab;
  final Drawer? drawer;
  String searchQuery = "Search query";
  bool _isSearching = false;
  int currentIndex = 0;

  ScreenScaffold({
    this.children = const [],
    this.fab,
    this.drawer,
    required this.activeNavBar,
    required this.activeAppBar,
  });

  @override
  _ScreenScaffoldState createState() => _ScreenScaffoldState();
}

class _ScreenScaffoldState extends State<ScreenScaffold> {
  late TextEditingController _searchQuery;

  @override
  void initState() {
    super.initState();
    _searchQuery = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: widget.activeAppBar ? _buildAppBar() : null,
        body: Stack(
          children: widget.children,
        ),
        bottomNavigationBar: BottomBarCustom());
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
        title: widget._isSearching ? _buildSearchField() : _buildTitle(),
        actions: _buildActions(),
        elevation: 1);
  }

  Widget _buildTitle() {
    var horizontalTitleAlignment =
        Platform.isIOS ? CrossAxisAlignment.center : CrossAxisAlignment.start;
    return InkWell(
      onTap: () => widget.scaffoldKey.currentState!.openDrawer(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
              child: Text("BREWDOG",
                  style: TextStyle(fontFamily: "BebasNeue", fontSize: 24))),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
   return TextField(
        controller: _searchQuery,
        autofocus: true,
        decoration: const InputDecoration(
          filled: true,
          hintText: 'Search...',
          hintStyle: TextStyle(color: Colors.blue),
        ),
        style: const TextStyle(color: Colors.grey, fontSize: 16.0),
        onChanged: updateSearchQuery,
      );
  }

  List<Widget> _buildActions() {
    if (widget._isSearching) {
      return <Widget>[
        TextButton(
            onPressed: () {
              _stopSearching();
            },
            child: const Text('Cancel', style: TextStyle(color: Colors.blue)))
      ];
    }

    return <Widget>[
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: _startSearch,
      ),
    ];
  }

  Widget _buildBackButton() {
    return BackButton(color: blue, onPressed: _stopSearching);
  }

  void _startSearch() {
    print("open search box");
    /*ModalRoute
        .of(context)
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));*/
    setState(() {
      widget._isSearching = true;
    });
  }

  void _stopSearching() {
    _clearSearchQuery();

    setState(() {
      widget._isSearching = false;
    });
  }

  void _clearSearchQuery() {
    print("close search box");
    setState(() {
      _searchQuery.clear();
      updateSearchQuery("Search query");
    });
  }

  void updateSearchQuery(String newQuery) {
    setState(() {
      widget.searchQuery = newQuery;
    });
    print("search query " + newQuery);
  }
}
