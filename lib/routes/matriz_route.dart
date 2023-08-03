import 'package:clearcont/service/select_value.dart';
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
    return
        NavBar(
          page:
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Table(
                border: TableBorder(
                    horizontalInside: BorderSide(
                        width: 1, color: Colors.white, style: BorderStyle.solid)),
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: TextSimple(text: 'COD. CONTA')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: TextSimple(text: 'DESCRIÇÃO')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: TextSimple(text: 'TIPO')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: TextSimple(text: 'AGRUPAMENTO')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: TextSimple(text: 'RESPONSÁVEL')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: TextSimple(
                                text: 'DOCUMENTO SUPORTE OBRIGATÓRIO')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Center(child: TextSimple(text: 'CONTROLA AGIANG?')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Center(child: TextSimple(text: 'PLANILHA SUPORTE?')),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(1, 1, 1, 1000),
                        borderRadius: BorderRadius.circular(20)),
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ConciliacaoCont(),
                            ),
                          );
                          RouteValue.selectedValue = "";
                        },
                        child: Center(child: Text("text")),
                      ),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(1, 1, 1, 1000),
                        borderRadius: BorderRadius.circular(20)),
                    children: [
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(1, 1, 1, 1000),
                        borderRadius: BorderRadius.circular(20)),
                    children: [
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                      Center(child: Text("text")),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
