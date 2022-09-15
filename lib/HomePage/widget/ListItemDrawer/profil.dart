import 'package:flutter/material.dart';

import '../NavBar/appNavBar.dart';

class profil extends StatefulWidget {
  const profil({Key? key}) : super(key: key);

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appNavBar(isShowToolbarSearch: true),
      body: Container(
        child: Text("profil"),
      ),
    );
  }
}
