import 'package:clearcont/service/menus_list.dart';
import 'package:clearcont/service/select_value.dart';
import 'package:clearcont/widgets/text.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final Widget page;

  const NavBar({super.key, required this.page});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final String selectedValue = RouteValue.selectedValue.toString();

  @override
  void initState() {
    RouteValue.selectedValue = "HOME";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey[800],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset(
                              'assets/images/logo-white.webp',
                              width: 80,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
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
                      segments: MenuList.LISTMENU.keys
                          .map((e) => ButtonSegment<String>(
                                value: e,
                                label: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          MenuList.LISTMENU[e],
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSimple(text: e),
                                    ],
                                  ),
                                ),
                              ))
                          .toList(),
                      style: ButtonStyle(backgroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.selected)) {
                          return Colors.black;
                        }
                        return Colors.grey[800]!;
                      })),
                      selected: {selectedValue},
                      onSelectionChanged: (value) {
                        setState(() {
                          MenuList.LISTMENU.keys.forEach((e) => {
                                if (e ==
                                    value
                                        .toString()
                                        .replaceAll('{', '')
                                        .replaceAll('}', ''))
                                  {RouteValue.selectedValue = e}
                              });

                          switch (RouteValue.selectedValue.toString()) {
                            case "HOME":
                              Navigator.pushNamed(context, '/');
                            case "MATRIZ-PLANO DE CONTAS":
                              Navigator.pushNamed(context, '/matriz');
                            case "CONTROLE":
                              Navigator.pushNamed(context, '/controle');
                            case "DASHBOARD":
                              Navigator.pushNamed(context, '/dashboard');
                            case "BALANCETE":
                              Navigator.pushNamed(context, '/balancete');
                            case "CLIENTES":
                              Navigator.pushNamed(context, '/clientes');
                            case "FORNECEDORES":
                              Navigator.pushNamed(context, '/fornecedores');
                            default:
                              Navigator.pushNamed(context, '/');
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            widget.page,
            // Container(
            //   child: (() {
            //     switch (RouteValue.selectedValue.toString()) {
            //       case "MATRIZ-PLANO DE CONTAS":
            //         return MatrizRoute();
            //       case "CONTROLE":
            //         return ControleRoute();
            //       case "DASHBOARD":
            //         return DashBoardRoute();
            //       case "BALANCETE":
            //         return BalanceteRoute();
            //       case "CLIENTES":
            //         return ClientesRoute();
            //       case "FORNECEDORES":
            //         return FornecedoresRoute();
            //       default:
            //         return Container();
            //     }
            //   })(),
            // )
          ],
        ),
      ),
    );
  }
}
