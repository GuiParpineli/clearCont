import 'package:clearcont/widgets/navbar.dart';
import 'package:flutter/material.dart';

import '../widgets/text.dart';

class BalanceteRoute extends StatelessWidget {
  const BalanceteRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return NavBar(
      page: Container(
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
                    child: Center(child: TextSimple(text: 'EMPRESA')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: TextSimple(text: 'Nº CONTA')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: TextSimple(text: 'AGRUPAMENTO')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: TextSimple(text: 'NOME DA CONTA')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: TextSimple(text: 'TOTAL BALANCETE')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: TextSimple(text: 'CLASSIFICAÇÂO')),
                  ),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
