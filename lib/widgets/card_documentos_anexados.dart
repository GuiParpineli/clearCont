import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDocumentsAttached extends StatefulWidget {
  const CardDocumentsAttached({super.key});

  @override
  State<CardDocumentsAttached> createState() => _CardDocumentsAttachedState();
}

class _CardDocumentsAttachedState extends State<CardDocumentsAttached> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(

            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Text(
                          "Documentos Anexados",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.picture_as_pdf,
                                  size: 40,
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.black,
                                ),
                                onPressed: () {},
                                child: Text("Baixar"),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.picture_as_pdf,
                                  size: 40,
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.black,
                                ),
                                onPressed: () {},
                                child: Text("Baixar"),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.picture_as_pdf,
                                  size: 40,
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.black,
                                ),
                                onPressed: () {},
                                child: Text("Baixar"),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("Documentos Aceitos: PDF, DOC e XLS"),
                  Container(
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.upload),
                                Text("Anexar Documento")
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Card(),
      ],
    );
  }
}
