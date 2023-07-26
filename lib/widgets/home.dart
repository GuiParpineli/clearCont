import 'package:flutter/material.dart';
import 'navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> listMenu = [];

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 720) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
            ),
          );
        } else {
          return const Navbar();
        }
      },
    );
  }
}
