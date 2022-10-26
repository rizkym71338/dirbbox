import 'package:dirbbox/app/modules/login/views/login_view.dart';
import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationItem extends StatelessWidget {
  NavigationItem({
    this.name,
    this.icon,
    this.route,
  });

  String? name;
  dynamic icon;
  dynamic route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).closeDrawer();
        Get.toNamed(route);
      },
      splashColor: Color(0xFF22215B).withOpacity(0.3),
      child: ListTile(
        leading: Icon(
          icon,
          color: Get.currentRoute == route ? Color(0xFF567DF4) : Colors.grey,
        ),
        title: Text(
          name ?? "",
          style: TextStyle(
            fontSize: 16,
            color: Get.currentRoute == route ? Color(0xFF1B1D28) : Colors.grey,
            fontWeight:
                Get.currentRoute == route ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
