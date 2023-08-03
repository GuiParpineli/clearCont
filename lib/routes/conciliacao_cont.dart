import 'package:clearcont/service/select_value.dart';
import 'package:clearcont/widgets/navbar.dart';
import 'package:flutter/material.dart';

class ConciliacaoCont extends StatefulWidget {
  const ConciliacaoCont({super.key});

  @override
  State<ConciliacaoCont> createState() => _ConciliacaoContState();
}

class _ConciliacaoContState extends State<ConciliacaoCont> {
  @override
  void initState() {
    RouteValue.selectedValue = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NavBar(
      page: Text("HEllo world"),
    );
  }
}
