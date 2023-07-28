import 'package:clearcont/service/menus_list.dart';
import 'package:clearcont/widgets/navbar.dart';
import 'package:clearcont/widgets/text.dart';
import 'package:flutter/material.dart';

class ControleRoute extends StatelessWidget {
  const ControleRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              'assets/images/logo-white.webp',
              height: 80,
              alignment: Alignment.center,
            ),
            const SizedBox(
                width: 100,
                height: 100,
                child: VerticalDivider(
                  color: Colors.white,
                )),
            const Expanded(
              child: Wrap(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextSimple(text: "Empresa:"),
                          TextSimple(text: "NOME EMPRESA NOME LTDA"),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextSimple(text: "CNPJ:"),
                      TextSimple(text: "00.000.000.0001-00"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextSimple(text: "Competência"),
                      TextSimple(text: "Competência"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextSimple(text: "Data da Geração do Balancete:"),
                      TextSimple(text: "01/01/1970"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: 100,
                height: 100,
                child: const VerticalDivider(
                  color: Colors.white,
                )),
            const Expanded(
              child: Card(
                color: Colors.black,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextSimple(text: "Resumo Balancete"),
                        TextSimple(text: "Valor"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextSimple(text: "ATIVO"),
                        TextSimple(text: "48,537,428.88"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextSimple(text: "PASSIVO"),
                        TextSimple(text: "40,914,851.41"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextSimple(text: "PL"),
                        TextSimple(text: "654,571.48"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextSimple(text: "RESULTADO"),
                        TextSimple(text: "8,277,148.95"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
                width: 100,
                height: 100,
                child: const VerticalDivider(
                  color: Colors.white,
                )),
            const Expanded(
              child: Card(
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextSimple(text: "Balancete Final em PDF"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.download,
                            size: 50,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
