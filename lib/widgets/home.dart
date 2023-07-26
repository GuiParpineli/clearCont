import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 720) {
          return Scaffold();
        } else {
          return Container(
            height: 20,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  color: Colors.black,
                  width: double.infinity,
                  child: Text(
                    'Hello World!',
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
