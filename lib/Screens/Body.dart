import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:symptots/Api/Api.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:symptots/Screens/countries.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchCountries(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  Map countries = snapshot.data[index];
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    child: Card(
                      elevation: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Countries(data: countries,)));
                          },
                          leading: SizedBox(
                              width: 40,
                              height: 20,
                              child: SvgPicture.network(countries['flag'])),
                          title: Text(
                            countries['name'],
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                          subtitle: Text(
                            "Capital : ${countries['capital']}",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ),
                      ),
                    ),
                  );
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
