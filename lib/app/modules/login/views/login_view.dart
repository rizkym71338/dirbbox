import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/background_login.png",
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      margin: EdgeInsets.only(top: 40),
                      child: Image.asset(
                        "assets/images/illustration_login.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome to",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF22215B),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Dirbbox",
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF22215B),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 250,
                      child: Text(
                        "Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF7B7F9E),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.offAllNamed(Routes.HOME);
                          },
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xFF567DF4).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 25,
                                  child: Image.asset(
                                    "assets/icons/finger.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Smart Id",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF567DF4)),
                                )
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.offAllNamed(Routes.HOME);
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color(0xFF567DF4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fixedSize: Size(150, 50),
                            shadowColor: Colors.transparent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 25,
                                child: Image.asset(
                                  "assets/icons/arrow_left.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Text(
                        "Use Social Login",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF1B1D28),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          child: Image.asset(
                            "assets/icons/instagram.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          width: 16,
                          height: 16,
                          child: Image.asset(
                            "assets/icons/twitter.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          width: 16,
                          height: 16,
                          child: Image.asset(
                            "assets/icons/facebook.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Text("Create an account"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
