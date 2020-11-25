import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Countries extends StatelessWidget {
  final data;
  Countries({this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data['name']),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                  child: Container(
                      width: 300,
                      height: 120,
                      child: Center(
                          child: SizedBox(
                              width: 150,
                              height: 100,
                              child: SvgPicture.network(data['flag']))))),
              Card(
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      width: 300,
                      height: 50,
                      child: Center(
                          child: Text(
                        "Country : ${data['name']}",
                        style:
                            TextStyle(fontSize: 20, color: Colors.blueAccent),
                      )))),
              Card(
                  child: Container(
                      width: 300,
                      height: 50,
                      child: Center(
                          child: Text(
                        "Capital : ${data['capital']}",
                        style:
                            TextStyle(fontSize: 20, color: Colors.blueAccent),
                      )))),
              Card(
                  child: Container(
                      width: 300,
                      height: 50,
                      child: Center(
                          child: Text(
                        "Alpha3 code : ${data['alpha3Code']}",
                        style:
                            TextStyle(fontSize: 20, color: Colors.blueAccent),
                      )))),
              Card(
                  child: Container(
                      width: 300,
                      height: 50,
                      child: Center(
                          child: Text(
                        "Calling code : +${data['callingCodes'][0]}",
                        style:
                            TextStyle(fontSize: 20, color: Colors.blueAccent),
                      )))),
            ],
          ),
        ),
      ),
    );
  }
}
