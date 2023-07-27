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
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextSimple(text: "COD. CONTA"),
                  TextSimple(text: "DESCRIÇÃO"),
                  TextSimple(text: "TIPO"),
                  TextSimple(text: "AGRUPAMENTO"),
                  TextSimple(text: "RESPONSÁVEL"),
                  TextSimple(text: "DOCUMENTO SUPORTE OBRIGATÓRIO"),
                  TextSimple(text: "CONTROLA AGIANG?"),
                  TextSimple(text: "PLANILHA SUPORTE?"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
