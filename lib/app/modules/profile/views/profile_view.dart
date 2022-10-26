import 'package:dirbbox/app/widgets/card_profile.dart';
import 'package:dirbbox/app/widgets/folder.dart';
import 'package:dirbbox/app/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'My Profile',
            style: TextStyle(
              color: Color(0xFF22215B),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            splashRadius: 24,
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xFF22215B),
            ),
          ),
          actions: [
            Builder(builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                splashRadius: 24,
                icon: Icon(
                  Icons.more_horiz_rounded,
                  color: Color(0xFF22215B),
                ),
              );
            }),
          ],
        ),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardProfile(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "My Folders",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF22215B),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_rounded,
                          ),
                          splashRadius: 24,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.art_track_rounded,
                          ),
                          splashRadius: 24,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                          ),
                          splashRadius: 24,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
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
                  ],
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
                      child: Text(
                        "Recent Uploads",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF22215B),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert_rounded,
                      ),
                      splashRadius: 24,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  RecentItem(),
                  RecentItem(),
                  RecentItem(),
                  RecentItem(),
                ],
              )
            ],
          ),
        ));
  }
}

class RecentItem extends StatelessWidget {
  const RecentItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Text("Projects.docx"),
        subtitle: Text("22 November 2020"),
        leading: CircleAvatar(
          backgroundColor: Color(0xFFEEF7FE),
          child: Icon(
            Icons.file_copy_outlined,
            color: Color(0xFF567DF4),
          ),
        ),
        trailing: Text("300kb"),
      ),
    );
  }
}
