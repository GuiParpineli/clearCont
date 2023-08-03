import 'package:clearcont/service/select_value.dart';
import 'package:clearcont/widgets/matriz_table.dart';
import 'package:clearcont/widgets/navbar.dart';
import 'package:clearcont/widgets/text.dart';
import 'package:flutter/material.dart';

import 'conciliacao_cont.dart';

class MatrizRoute extends StatefulWidget {
  const MatrizRoute({super.key});

  @override
  State<MatrizRoute> createState() => _MatrizRouteState();
}

class _MatrizRouteState extends State<MatrizRoute> {
  @override
  Widget build(BuildContext context) {
    return NavBar(
      page: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: MatrizTable(),
        ),
      ),
    );
  }
}
