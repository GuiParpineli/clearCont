import 'package:clearcont/widgets/text_black.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardAccountDetails extends StatelessWidget {
  const CardAccountDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Nome da conta: "),
                  Text(" *****"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Numero da conta:"),
                  Text("00"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Status conciliação:"),
                  Text("****"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Composição do Saldo Contabil:"),
                  ),
                  TextBlack(text: "R\$ 99.999,00", size: 18)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Diferença:"),
                  ),
                  TextBlack(text: "R\$ 99.999,00", size: 18)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
