import 'package:examflutter/HomePage/homePage.dart';
import 'package:examflutter/HomePage/widget/ResultSearch.dart';
import 'package:flutter/material.dart';

import 'DrawerList.dart';

class appNavBar extends StatelessWidget with PreferredSizeWidget {
  const appNavBar(
      {Key? key,
      this.isShowToolbarHome = false,
      this.isShowToolbarSearch = false})
      : super(key: key);
  final bool isShowToolbarHome;
  final bool isShowToolbarSearch;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //automaticallyImplyLeading: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      backgroundColor: Colors.black,
      elevation: 0,
      actions: [
        showToolBar(context),
      ],
    );
  }

  Widget showToolBar(BuildContext context) {
    if (isShowToolbarHome) {
      return IconButton(
          padding: EdgeInsets.all(20),
            onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultSearch(),
                ));
          },
          iconSize: 25,
          icon: Icon(
            Icons.search_rounded,
            color: Colors.white,
          ));
    } else if (isShowToolbarSearch){
      return IconButton(
          padding: EdgeInsets.all(20),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => homePage(),
                ));
          },
          iconSize: 25,
          icon: Icon(
            Icons.backspace_outlined,
            color: Colors.white,
          ));
    }
    return SizedBox();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
