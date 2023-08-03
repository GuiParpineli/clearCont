import 'dart:ui';

import 'package:clearcont/routes/balancete_route.dart';
import 'package:clearcont/routes/clientes_route.dart';
import 'package:clearcont/routes/controle_route.dart';
import 'package:clearcont/routes/dashboard_route.dart';
import 'package:clearcont/routes/fornecedores_route.dart';
import 'package:clearcont/routes/home.dart';
import 'package:clearcont/routes/matriz_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      title: 'Flutter Demo',
      theme: ThemeData(colorSchemeSeed: Colors.grey, useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/matriz': (context) => MatrizRoute(),
        '/controle': (context) => ControleRoute(),
        '/dashboard': (context) => DashBoardRoute(),
        '/balancete': (context) => BalanceteRoute(),
        '/clientes': (context) => ClientesRoute(),
        '/fornecedores': (context) => FornecedoresRoute(),
      },
    );
  }
}
