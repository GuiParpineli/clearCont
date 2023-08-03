import 'package:clearcont/service/select_value.dart';
import 'package:clearcont/widgets/card_documentos_anexados.dart';
import 'package:clearcont/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConciliacaoCont extends StatefulWidget {
  const ConciliacaoCont({super.key});

  @override
  State<ConciliacaoCont> createState() => _ConciliacaoContState();
}

class _ConciliacaoContState extends State<ConciliacaoCont> {
  @override
  void initState() {
    RouteValue.selectedValue = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NavBar(
      page: Column(
        children: [
          Center(
            child: Text(
              "Conciliação Contábil",
              style: GoogleFonts.inter(
                  textStyle: TextStyle(fontWeight: FontWeight.w900),
                  fontSize: 30),
            ),
          ),
          Row(
            children: [
              CardDocumentsAttached(),
              Card(),
            ],
          ),
          Row(
            children: [Card()],
          ),
          Row(
            children: [Card()],
          )
        ],
      ),
    );
  }
}
