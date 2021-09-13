import 'package:daechungdam_web/const/colors.dart';
import 'package:daechungdam_web/screens/map.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '대청댐 유역관리',
                style: TextStyle(
                    color: defaultBlue,
                    fontSize: 65,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 77),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 265,
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: '아이디',
                            focusedBorder: textFieldStyle(),
                            enabledBorder: textFieldStyle(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 17,
                              horizontal: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 265,
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: '비밀번호',
                            focusedBorder: textFieldStyle(),
                            enabledBorder: textFieldStyle(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 17,
                              horizontal: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: () {
                      Get.offNamed('/home');
                      // Get.to(MapScreen());
                    },
                    child: Text(
                      '로그인',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: defaultBlue,
                      minimumSize: Size(132, 108),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder textFieldStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: textFieldColor),
    );
  }
}
