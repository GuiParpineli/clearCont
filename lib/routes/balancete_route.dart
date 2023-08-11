import 'package:clearcont/widgets/navbar.dart';
import 'package:flutter/material.dart';

import '../widgets/balancete_table.dart';
import '../widgets/text.dart';

class BalanceteRoute extends StatelessWidget {
  const BalanceteRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return NavBar(
      page: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: BalanceteTable(),
          ),
        ),
      ),
    );
  }
}
