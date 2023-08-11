import 'package:clearcont/routes/controle_route.dart';
import 'package:clearcont/service/select_value.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
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
                  Text("Selecione o Periodo"),
                  Text(
                    'Data selecionada: ${_dateTime.day}/${_dateTime.month}/${_dateTime.year}',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                      ),
                      child: Text('Selecionar data'),
                      onPressed: () async {
                        final DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: _dateTime,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        );
                        if (picked != null && picked != _dateTime) {
                          setState(() {
                            _dateTime = picked;
                          });
                        }
                      },
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
