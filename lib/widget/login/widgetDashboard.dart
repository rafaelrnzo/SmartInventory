
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inventory/Page/main/dashboard/dashboard.dart';
import 'package:flutter_inventory/global/color.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Page 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Page 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}


  AppBar AppbarDashboard(double height, double width) {
    return AppBar(
      toolbarHeight: height / 10,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.category_rounded,
          color: base,
          size: width * 0.08,
        ),
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.person_rounded,
            color: base,
            size: width * 0.08,
          ),
          onPressed: () {},
        ),
      ],
    );
  }


