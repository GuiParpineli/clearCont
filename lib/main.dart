import 'dart:ui';

import 'package:clearcont/routes/balancete_route.dart';
import 'package:clearcont/routes/clientes_route.dart';
import 'package:clearcont/routes/conciliacao_cont.dart';
import 'package:clearcont/routes/controle_route.dart';
import 'package:clearcont/routes/dashboard_route.dart';
import 'package:clearcont/routes/fornecedores_route.dart';
import 'package:clearcont/routes/home.dart';
import 'package:clearcont/routes/perfil_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) => runApp(const MyApp()));
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
      theme: ThemeData(
          colorSchemeSeed: Colors.blueGrey,
          useMaterial3: true,
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/controle': (context) => ControleRoute(),
        '/dashboard': (context) => DashBoardRoute(),
        '/balancete': (context) => BalanceteRoute(),
        '/clientes': (context) => ClientesRoute(),
        '/fornecedores': (context) => FornecedoresRoute(),
        '/conciliacao': (context) => ConciliacaoCont(),
        '/perfil': (context) => PerfilRoute(),
      },
    );
  }
}
