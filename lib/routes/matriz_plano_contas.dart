import 'package:clearcont/widgets/text.dart';
import 'package:flutter/material.dart';

class Matriz extends StatefulWidget {
  const Matriz({super.key});

  @override
  State<Matriz> createState() => _MatrizState();
}

class _MatrizState extends State<Matriz> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
      child:
         Padding(
           padding: const EdgeInsets.all(4.0),
           child: Table(
            border: TableBorder.all(),
            children: const [
              TableRow(
                children: [
                  Center(child: TextSimple(text:'COD. CONTA')),
                  Center(child: TextSimple(text: 'DESCRIÇÃO')),
                  Center(child: TextSimple(text: 'TIPO')),
                  Center(child: TextSimple(text: 'AGRUPAMENTO')),
                  Center(child: TextSimple(text: 'RESPONSÁVEL')),
                  Center(child: TextSimple(text: 'DOCUMENTO SUPORTE OBRIGATÓRIO')),
                  Center(child: TextSimple(text: 'CONTROLA AGIANG?')),
                  Center(child: TextSimple(text: 'PLANILHA SUPORTE?')),
                ],
              ),
            ],
        ),
         ),
      );
  }
}
