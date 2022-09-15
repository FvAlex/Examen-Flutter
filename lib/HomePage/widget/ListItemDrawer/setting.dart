import 'package:flutter/material.dart';

import '../NavBar/appNavBar.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appNavBar(isShowToolbarSearch: true),
      body: Container(
        child: Text("setting"),
      ),
    );
  }
}
