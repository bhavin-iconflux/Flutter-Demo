import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('Padding Widget')),
        body: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.blue,
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      'Symmetric Padding(vertical: 10.0, horizontal: 20.0)',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.blue,
                  child: const Padding(
                    padding: EdgeInsets.only(
                        bottom: 10, right: 20, top: 50, left: 35),
                    child: Text(
                      'Only Padding(bottom: 10,right: 20,top: 50,left: 35)',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.blue,
                  child: const Padding(
                    padding: EdgeInsets.all(60),
                    child: Text(
                      'All Padding(60)',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.blue,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10, 50, 10, 20),
                    child: Text(
                      'FromLTRB Padding(10,50,10,20)',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.blue,
                  child: const Padding(
                    padding: EdgeInsets.zero,
                    child: Text(
                      'Zero Padding',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ],
        ));
  }
}
