import 'package:clearcont/service/select_value.dart';
import 'package:clearcont/widgets/card_account_details.dart';
import 'package:clearcont/widgets/card_composicao_lancamentos.dart';
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
      page: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black12),
          color: Colors.white,
        ),
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 20,
                  )),
            ),
            Center(
              child: Text(
                "Conciliação Contábil",
                style: GoogleFonts.inter(
                    textStyle: TextStyle(fontWeight: FontWeight.w900),
                    fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardDocumentsAttached(),
                CardAccountDetails(),
              ],
            ),
            CardComposicaoLanc(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    margin: EdgeInsets.all(20),
                    height: 100,
                    child: Card(
                      child: Text("Table"),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    margin: EdgeInsets.all(20),
                    height: 100,
                    child: Card(
                      child: Text("Table"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
