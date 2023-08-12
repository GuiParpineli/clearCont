import 'dart:js_interop';

import 'package:clearcont/routes/controle_route.dart';
import 'package:clearcont/service/select_value.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../widgets/mont_picker.dart';
import '../widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime? _selected;

  @override
  void initState() {
    super.initState();
    _selected = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 200) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
            ),
          );
        } else {
          return NavBar(
            page: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Sistema de Conciliação Contabil",
                      style: GoogleFonts.inter(
                          fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset(
                      'assets/images/logo-black.webp',
                      height: 200,
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          child: const Text("Selecione o Periodo"),
                          onPressed: () async {
                            final selected = await showMonthPicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1970),
                              lastDate: DateTime(2050),
                            );
                            setState(() => _selected = selected);
                          },
                        ),
                        const SizedBox(height: 10),
                        if (!_selected.isNull)
                          Text(DateFormat.MMMM('pt_BR').format(_selected!).toUpperCase()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
