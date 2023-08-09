import 'package:clearcont/service/select_value.dart';
import 'package:clearcont/widgets/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilRoute extends StatefulWidget {
  const PerfilRoute({super.key});

  @override
  State<PerfilRoute> createState() => _PerfilRouteState();
}

class _PerfilRouteState extends State<PerfilRoute>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    RouteValue.selectedValue = " ";
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Perfil',
          style: GoogleFonts.inter(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: "Infomações da conta",
              icon: Icon(Icons.info),
            ),
            Tab(
              text: "Segurança da conta",
              icon: Icon(Icons.security),
            ),
            Tab(
              text: "Notificações",
              icon: Icon(Icons.notifications),
            ),
          ],
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }
}
