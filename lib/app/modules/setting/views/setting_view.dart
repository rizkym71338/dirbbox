import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
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
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Setting",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1B1D28),
                    ),
                  ),
                ),
              ),
              SettingItem(name: "Add Account"),
              SettingItem(name: "Change Password"),
              SettingItem(name: "Change Language"),
              SettingItem(name: "Upgrade Plan"),
              SettingItem(name: "Multiple Account"),
              SizedBox(
                height: 30,
              ),
              SettingItemSwitch(
                name: "Enable Sync",
              ),
              SizedBox(
                height: 30,
              ),
              SettingItemSwitch(
                name: "Enable 2 Step Verification",
              ),
            ],
          ),
        ));
  }
}

class SettingItemSwitch extends StatelessWidget {
  SettingItemSwitch({
    required this.name,
  });

  String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1B1D28),
            ),
          ),
          ToggleSwitch(
            minWidth: 15,
            minHeight: 10,
            cornerRadius: 99,
            activeBgColors: [
              [Color(0xFFFAFAFA)],
              [Color(0xFFFAFAFA)],
            ],
            inactiveBgColor: Color(0xFF00BCD4),
            borderWidth: 6,
            borderColor: [
              Color(0xFF00BCD4),
            ],
            initialLabelIndex: 0,
            totalSwitches: 2,
            radiusStyle: true,
          ),
        ],
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  SettingItem({
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Text(name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF1B1D28),
            )),
      ),
    );
  }
}
