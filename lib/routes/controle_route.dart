import 'package:clearcont/widgets/text.dart';
import 'package:flutter/material.dart';

class ControleRoute extends StatelessWidget {
  const ControleRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/logo-white.webp',
                  height: 80,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(
                  width: 10,
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
                  width: 10,
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
              const SizedBox(
                  width: 10,
                  height: 100,
                  child: VerticalDivider(
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
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(
                border: TableBorder.all(),
                children: const [
                  TableRow(
                    children: [
                      Center(child: TextSimple(text: 'CONTA RAZÃO')),
                      Center(child: TextSimple(text: 'NOME DA CONTA')),
                      Center(child: TextSimple(text: 'SALDO BALANCETE')),
                      Center(child: TextSimple(text: 'SALDO ANÁLISE')),
                      Center(child: TextSimple(text: 'VALOR DIFERENTE')),
                      Center(child: TextSimple(text: 'RESPONSÁVEL')),
                      Center(
                          child:
                              TextSimple(text: 'STATUS GERAL DA CONCILIAÇÃO')),
                      Center(child: TextSimple(text: 'OBSERVAÇÕES')),
                      Center(child: TextSimple(text: 'COMPOSIÇÃO PREENCHIDA?')),
                      Center(
                          child: TextSimple(text: 'AGING LIST DA PENDÊNCIA')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
