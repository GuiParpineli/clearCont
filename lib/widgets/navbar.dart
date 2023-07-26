import 'package:clearcont/widgets/text.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final List<String> menus;

  const Navbar({super.key, required this.menus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black54,
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
                                Text(
                                  "Perfil",
                                  style: TextStyle(color: Colors.white),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    )),
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
                      padding: EdgeInsets.all(10),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextSimple(text: menus[0])),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextSimple(text: menus[1])),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextSimple(text: menus[2])),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextSimple(text: menus[3])),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextSimple(text: menus[4])),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextSimple(text: menus[5])),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
