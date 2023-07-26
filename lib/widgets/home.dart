import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 720) {
          return Scaffold(appBar: AppBar(backgroundColor: Colors.black,),);
        } else {
          return Scaffold(
            body: Column(
              children: [
                Container(
                  color: Colors.black,
                  width: double.infinity,
                  height: 50,
                  child: Text(
                    'Hello World!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
