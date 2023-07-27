import 'package:clearcont/widgets/text.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final List<String> menus;

  const Navbar({super.key, required this.menus});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color.fromRGBO(30, 30, 30, 10),
          width: double.infinity,
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
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Perfil",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                  ),
                    Center(
                      child: SegmentedButton<String>(
                        segments: menus
                            .map((e) => ButtonSegment<String>(
                          value: e,
                          label: Text(e),
                        ))
                            .toList(),
                        selected: {menus[0]},
                        onSelectionChanged: (value) {
                          print(value);
                        },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
