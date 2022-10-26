import 'package:dirbbox/app/widgets/folder.dart';
import 'package:dirbbox/app/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Your Dribbox",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Color(0xFF22215B),
          ),
        ),
        leadingWidth: 0,
        actions: [
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              splashRadius: 24,
              icon: Icon(
                Icons.menu_rounded,
                color: Color(0xFF22215B),
              ),
            );
          }),
        ],
      ),
      drawer: MainDrawer(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: TextField(
              autocorrect: false,
              controller: controller.searchController,
              decoration: InputDecoration(
                // labelText: "Search Folder",
                hintText: "Search Folder",
                hintStyle: TextStyle(
                  color: Color(0xFF22215B),
                ),

                // fillColor: Colors.black,
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Color(0xFF22215B),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(99),
                  borderSide: BorderSide(
                    color: Color(0xFF22215B),
                    width: 2,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.outside,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "Recent",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF22215B),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(
                          0xFF22215B,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu_rounded,
                      ),
                      splashRadius: 24,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.window_rounded,
                      ),
                      splashRadius: 24,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Folder(
                  color: Color(0xFF567DF4),
                  name: "Mobile Apps",
                  date: "20 December 2020",
                ),
                Folder(
                  color: Color(0xFFFFDE6C),
                  name: "SVG Icons",
                  date: "14 December 2020",
                ),
                Folder(
                  color: Color(0xFFF45656),
                  name: "Prototypes",
                  date: "22 November 2020",
                ),
                Folder(
                  color: Color(0xFF34DEDE),
                  name: "Avatars",
                  date: "16 December 2020",
                ),
                Folder(
                  color: Color(0xFF567DF4),
                  name: "Design",
                  date: "20 December 2020",
                ),
                Folder(
                  color: Color(0xFFFFDE6C),
                  name: "Portfolio",
                  date: "16 December 2020",
                ),
                Folder(
                  color: Color(0xFFF45656),
                  name: "Preferences",
                  date: "22 December 2020",
                ),
                Folder(
                  color: Color(0xFF34DEDE),
                  name: "CLients",
                  date: "22 December 2020",
                ),
                Folder(
                  color: Color(0xFF567DF4),
                  name: "Mobile Apps",
                  date: "20 December 2020",
                ),
                Folder(
                  color: Color(0xFFFFDE6C),
                  name: "SVG Icons",
                  date: "14 December 2020",
                ),
                Folder(
                  color: Color(0xFFF45656),
                  name: "Prototypes",
                  date: "22 November 2020",
                ),
                Folder(
                  color: Color(0xFF34DEDE),
                  name: "Avatars",
                  date: "16 December 2020",
                ),
                Folder(
                  color: Color(0xFF567DF4),
                  name: "Design",
                  date: "20 December 2020",
                ),
                Folder(
                  color: Color(0xFFFFDE6C),
                  name: "Portfolio",
                  date: "16 December 2020",
                ),
                Folder(
                  color: Color(0xFFF45656),
                  name: "Preferences",
                  date: "22 December 2020",
                ),
                Folder(
                  color: Color(0xFF34DEDE),
                  name: "CLients",
                  date: "22 December 2020",
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
