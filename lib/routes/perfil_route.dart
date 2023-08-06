import 'package:clearcont/widgets/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilRoute extends StatefulWidget {
  const PerfilRoute({super.key});

  @override
  State<PerfilRoute> createState() => _PerfilRouteState();
}

class _PerfilRouteState extends State<PerfilRoute> {
  @override
  Widget build(BuildContext context) {
    return NavBar(
        page: Column(
      children: [
        Card(
          margin: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      Text(
                        "Perfil",
                        style: GoogleFonts.inter(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                        Text(
                          "Sair",
                          style: GoogleFonts.inter(color: Colors.white),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.logout,
                        ),
                        Text(
                          "Sair",
                          style: GoogleFonts.inter(),
                        )
                      ],
                    ),
                  )),
              Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.logout,
                          ),
                          Text(
                            "Sair",
                            style: GoogleFonts.inter(),
                          )
                        ],
                      ),
                    )),
              ),
              TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                        ),
                        Text(
                          "Sair",
                          style: GoogleFonts.inter(),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        )
      ],
    ));
  }
}
