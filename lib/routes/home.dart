import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> listMenu = [
      'MATRIZ-PLANO DE CONTAS',
      'CONTROLE',
      'DASHBOARD',
      'BALANCETE',
      'CLIENTES',
      'FORNECEDORES'
    ];

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 720) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
            ),
          );
        } else {
          return const Navbar(menus: listMenu,);
        }
      },
    );
  }
}
