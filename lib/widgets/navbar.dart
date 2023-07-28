import 'package:clearcont/routes/controle_route.dart';
import 'package:clearcont/routes/home.dart';
import 'package:clearcont/routes/matriz_route.dart';
import 'package:clearcont/service/menus_list.dart';
import 'package:clearcont/service/select_value.dart';
import 'package:clearcont/widgets/text.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  void initState() {
    RouteValue.selectedValue = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/logo-white.webp',
                        width: 50,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black12),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  "Perfil",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: SegmentedButton<String>(
                  segments: LISTMENU
                      .map((e) => ButtonSegment<String>(
                            value: e,
                            label: TextSimple(text: e),
                          ))
                      .toList(),
                  style: ButtonStyle(backgroundColor:
                      MaterialStateProperty.resolveWith<Color>((states) {
                    if (states.contains(MaterialState.selected)) {
                      return Colors.black;
                    }
                    return Colors.grey;
                  })),
                  selected: {RouteValue.selectedValue},
                  onSelectionChanged: (value) {
                    setState(() {
                      LISTMENU.forEach((e) => {
                            if (e ==
                                value
                                    .toString()
                                    .replaceAll('{', '')
                                    .replaceAll('}', ''))
                              {RouteValue.selectedValue = e}
                          });
                    });
                    print(RouteValue.selectedValue);
                    // switch (value.toString()) {
                    //   case "{MATRIZ-PLANO DE CONTAS}":
                    //     Navigator.push(
                    //         (context),
                    //         MaterialPageRoute(
                    //             builder: (context) => const MatrizRoute()));
                    //     break;
                    //   case "{CONTROLE}":
                    //     Navigator.push(
                    //         (context),
                    //         MaterialPageRoute(
                    //             builder: (context) => const ControleRoute()));
                    //     break;
                    // }
                  },
                ),
              ),
      ],
          ),
        ),
      Container(
        child: (() {
          switch (RouteValue.selectedValue.toString()) {
            case "MATRIZ-PLANO DE CONTAS":
              return MatrizRoute();
            case "CONTROLE":
              return ControleRoute();
          }
        })(),
      )
      ],
    );
  }
}
