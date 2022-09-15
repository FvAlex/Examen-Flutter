import 'package:examflutter/HomePage/widget/ListItemDrawer/profil.dart';
import 'package:flutter/material.dart';

import '../ListItemDrawer/setting.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 225,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 60,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Drawer List',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading:Icon(Icons.person),
            title: Text("Profil"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profil(),
                  ));
            },
          ),
          ListTile(
            leading:Icon(Icons.more_vert),
            title: Text('Setting'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => setting(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
