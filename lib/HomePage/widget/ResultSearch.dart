import 'package:examflutter/HomePage/widget/NavBar/appNavBar.dart';
import 'package:flutter/material.dart';

class ResultSearch extends StatelessWidget {
  const ResultSearch({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appNavBar(isShowToolbarSearch: true),
      body: Container(
        child: Text("Coucou"),
      ),
    );
  }

}
