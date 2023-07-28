import 'package:clearcont/routes/controle_route.dart';
import 'package:clearcont/service/select_value.dart';
import 'package:flutter/material.dart';
import 'package:clearcont/routes/matriz_route.dart';
import '../widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 200) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
            ),
          );
        } else {
          return Scaffold(
            body: ListView(
              children: const [
                NavBar(),
              ],
            ),
          );
        }
      },
    );
  }
}
