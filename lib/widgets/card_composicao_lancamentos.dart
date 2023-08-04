import 'package:clearcont/widgets/text.dart';
import 'package:clearcont/widgets/text_black.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardComposicaoLanc extends StatelessWidget {
  const CardComposicaoLanc({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.black,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text("Composição Lançamentos ",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Table(
              border: TableBorder.symmetric(
                inside: const BorderSide(color: Colors.black),
                outside: BorderSide.none,
              ),
              children: [
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Data',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Histórico',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Débito',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Saldo',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ]),
                TableRow(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  children: [
                    Container(
                        height: 50, child: const Center(child: Text("text"))),
                    Container(
                        height: 50, child: const Center(child: Text("text"))),
                    Container(
                        height: 50, child: const Center(child: Text("text"))),
                    Container(
                        height: 50, child: const Center(child: Text("text"))),
                  ],
                ),
                TableRow(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  children: [
                    Container(
                        height: 50, child: const Center(child: Text("text"))),
                    Container(
                        height: 50, child: const Center(child: Text("text"))),
                    Container(
                        height: 50, child: const Center(child: Text("text"))),
                    Container(
                        height: 50, child: const Center(child: Text("text"))),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  children: [
                    Container(
                      height: 50,
                      child: const Center(child: Text("text")),
                    ),
                    Container(
                      height: 50,
                      child: const Center(child: Text("text")),
                    ),
                    Container(
                      height: 50,
                      child: const Center(child: Text("text")),
                    ),
                    Container(
                      height: 50,
                      child: const Center(child: Text("text")),
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  children: [
                    Container(
                      height: 50,
                      child: Center(
                          child: Text(
                        "Total:",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w900,
                        ),
                      )),
                    ),
                    Container(
                      height: 50,
                      child: Center(
                        child: Text(
                          "R\$99.00",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Center(
                        child: Text(
                          "R\$99.00",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Center(
                        child: Text(
                          "R\$99.00",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.grey[800],
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.upload),
                          Text(
                            'Importar Arquivo',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
