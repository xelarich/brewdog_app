import 'dart:io';

import 'package:brewdog_app/components/screen_scaffold.dart';
import 'package:brewdog_app/data/model/beer.dart';
import 'package:brewdog_app/data/repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BeersPage extends StatefulWidget {
  const BeersPage({Key? key}) : super(key: key);

  @override
  _BeersPageState createState() => _BeersPageState();
}

class _BeersPageState extends State<BeersPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
        children: [_buildBody(context)], activeAppBar: true, activeNavBar: '');
  }

  Widget _buildBody(BuildContext context) {
    final client = RestClient(Dio());
    return Column(children: [
      FutureBuilder<List<Beer>>(
        future: client.getBeer(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            print(snapshot.hasData);
            return Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return _buildBeerItem(snapshot.data![index]);
                    }));
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )
    ]);
  }

  Widget _buildBeerItem(Beer beer) {
    return Card(
        margin: const EdgeInsets.all(8),
        elevation: 10,
        color: Colors.white,
        shadowColor: Colors.black12,
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Color(0xffE9E9E9),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          child: Image.network(beer.imageUrl!,
                              width: 80, height: 80, fit: BoxFit.contain),
                        )),
                    Padding(
                        padding: const EdgeInsetsDirectional.only(top: 8),
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                beer.name!,
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(top: 16),
                                  child: Text(
                                    beer.tagline!,
                                    maxLines: 2,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16, color: Colors.black),
                                  ))
                            ]))
                  ])
            ])));
  }
}
