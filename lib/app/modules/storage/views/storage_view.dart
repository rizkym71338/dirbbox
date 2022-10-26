import 'package:dirbbox/app/widgets/main_drawer.dart';
import 'package:dirbbox/app/widgets/storage_item.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/storage_controller.dart';

class StorageView extends GetView<StorageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Storage Details',
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
              SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  width: 148,
                  height: 148,
                  child: Image.asset("assets/images/storage_chart.png"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Available",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF22215B),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "43.36 GB",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF22215B),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Total 128 GB",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF22215B),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              StorageItem(
                name: "Design FIles",
                value: 38.66,
                color: Color(0xFF22215B),
              ),
              StorageItem(
                name: "Images",
                value: 24.80,
                color: Color(0xFFFFC700),
              ),
              StorageItem(
                name: "Videos",
                value: 12.60,
                color: Color(0xFF4CE364),
              ),
              StorageItem(
                name: "Documents",
                value: 6.57,
                color: Color(0xFF567DF4),
              ),
              StorageItem(
                name: "Others",
                value: 2.01,
                color: Color(0xFFFF842A),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Export Details",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF22215B),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
