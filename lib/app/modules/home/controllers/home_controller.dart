import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController searchController = TextEditingController();

  void doAlert() {
    Get.snackbar("Message", "${searchController.text}");
  }
}
