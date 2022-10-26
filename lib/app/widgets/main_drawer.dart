import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:dirbbox/app/widgets/navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainDrawer extends StatelessWidget {
  MainDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: double.infinity,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                height: 130,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(99),
                          ),
                          child: Image.network(
                            "https://picsum.photos/seed/picsum/300/300",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Neelesh",
                            style: TextStyle(
                              color: Color(0xFF1B1D28),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Seattle,Washington",
                            style: TextStyle(
                              color: Color(0xFF7B7F9E),
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Scaffold.of(context).closeDrawer();
                },
                icon: Icon(
                  Icons.close_rounded,
                  color: Color(0xFF3A4276),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          NavigationItem(
            name: "Home",
            icon: Icons.home_rounded,
            route: Routes.HOME,
          ),
          NavigationItem(
            name: "Profile",
            icon: Icons.person_rounded,
            route: Routes.PROFILE,
          ),
          NavigationItem(
            name: "Storage",
            icon: Icons.storage_rounded,
            route: Routes.STORAGE,
          ),
          NavigationItem(
            name: "Shared",
            icon: Icons.share_rounded,
            // route: Routes.LOGIN,
          ),
          NavigationItem(
            name: "Stats",
            icon: Icons.bar_chart_rounded,
            // route: Routes.LOGIN,
          ),
          NavigationItem(
            name: "Settings",
            icon: Icons.settings_rounded,
            route: Routes.SETTING,
          ),
          NavigationItem(
            name: "Help",
            icon: Icons.help_outline_rounded,
            // route: Routes.LOGIN,
          ),
          SizedBox(
            height: 80,
          ),
          GestureDetector(
            onTap: () => Get.offAllNamed(Routes.LOGIN),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.power_settings_new_rounded,
                  color: Color(0xFF1B1D28),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1B1D28),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "Version 0.0.1",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Color(0xFF3A4276),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
