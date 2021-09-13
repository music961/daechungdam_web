import 'package:daechungdam_web/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30.h),
          Text(
            '사용자 계정 추가하기',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            // width: 1100.w,
            decoration: BoxDecoration(border: Border.all(width: 1.w)),
            child: Column(
              children: [
                Container(
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: Color(0xff00B9ED),
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 1.w),
                    ),
                  ),
                  child: Row(
                    children: [
                      _buildRow(flex: 2, text: '권역'),
                      Container(
                          height: 35.h, width: 0.5.w, color: Colors.black),
                      _buildRow(flex: 2, text: '사용자'),
                      Container(
                          height: 35.h, width: 0.5.w, color: Colors.black),
                      _buildRow(flex: 3, text: '아이디'),
                      Container(
                          height: 35.h, width: 0.5.w, color: Colors.black),
                      _buildRow(flex: 3, text: '비밀번호'),
                    ],
                  ),
                ),
                Container(
                  height: 35.h,
                  child: Row(
                    children: [
                      _buildTextField(flex: 2, hintText: '권역 입력'),
                      Container(
                          height: 35.h, width: 0.5.w, color: Colors.black),
                      _buildTextField(flex: 2, hintText: '사용자 이름 입력'),
                      Container(
                          height: 35.h, width: 0.5.w, color: Colors.black),
                      _buildTextField(flex: 3, hintText: '아이디 입력'),
                      Container(
                          height: 35.h, width: 0.5.w, color: Colors.black),
                      _buildTextField(flex: 3, hintText: '비밀번호 입력'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.h),
          Text(
            '사용자 계정 목록',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            // width: 1100.w,
            decoration: BoxDecoration(border: Border.all(width: 1.w)),
            child: Column(
              children: [
                Container(
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: Color(0xff00B9ED),
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 1.w),
                    ),
                  ),
                  child: Row(
                    children: [
                      _buildRow(flex: 2, text: '사용자'),
                      Container(
                          height: 35.h, width: 0.5.w, color: Colors.black),
                      _buildRow(flex: 3, text: '아이디'),
                      Container(
                          height: 35.h, width: 0.5.w, color: Colors.black),
                      _buildRow(flex: 3, text: '비밀번호'),
                      Container(
                          height: 35.h, width: 0.5.w, color: Colors.black),
                      _buildRow(flex: 1, text: '수정 / 삭제'),
                    ],
                  ),
                ),
                Container(
                  height: 45.h,
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: Center(child: Text('김대청'))),
                      Container(
                          height: 45.h, width: 0.5.w, color: Colors.black),
                      Expanded(flex: 3, child: Center(child: Text('김대청'))),
                      Container(
                          height: 45.h, width: 0.5.w, color: Colors.black),
                      Expanded(flex: 3, child: Center(child: Text('김대청'))),
                      Container(
                          height: 45.h, width: 0.5.w, color: Colors.black),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: () {
                                    Get.dialog(
                                      accountUpdateDialog(),
                                      barrierDismissible: false,
                                    );
                                  },
                                  child: Text(
                                    '수정',
                                    style: TextStyle(
                                      color: defaultBlue,
                                      fontSize: 16,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    // minimumSize: Size(50, 35),
                                    side: BorderSide(
                                      width: 1.w,
                                      color: defaultBlue,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    '삭제',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    // minimumSize: Size(50, 35),
                                    primary: defaultBlue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget accountUpdateDialog() {
    return Dialog(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: defaultBlue,
            height: 53.h,
            width: 789.w,
            padding: EdgeInsets.only(left: 32),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '계정수정',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 28.h),
          Container(
            width: 700.w,
            decoration: BoxDecoration(border: Border.all(width: 1.w)),
            child: Column(
              children: [
                Container(
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: Color(0xff00B9ED),
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 1.w),
                    ),
                  ),
                  child: Row(
                    children: [
                      _buildRow(flex: 2, text: '사용자'),
                      Container(
                          height: 35.h, width: 0.5.w, color: Colors.black),
                      _buildRow(flex: 3, text: '아이디'),
                      Container(
                          height: 35.h, width: 0.5.w, color: Colors.black),
                      _buildRow(flex: 3, text: '비밀번호'),
                    ],
                  ),
                ),
                Container(
                  height: 35.h,
                  child: Row(
                    children: [
                      _buildTextField(flex: 2, hintText: '사용자 이름 입력'),
                      Container(
                          height: 35.h, width: 0.5.w, color: Colors.black),
                      _buildTextField(flex: 3, hintText: '아이디 입력'),
                      Container(
                          height: 35.h, width: 0.5.w, color: Colors.black),
                      _buildTextField(flex: 3, hintText: '비밀번호 입력'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Container(
            width: 700.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    '취소',
                    style: TextStyle(
                      color: defaultBlue,
                      fontSize: 16,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(50, 35),
                    side: BorderSide(
                      width: 1.w,
                      color: defaultBlue,
                    ),
                  ),
                ),
                SizedBox(width: 13.w),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '저장',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(50, 35),
                    primary: defaultBlue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }

  Widget _buildTextField({required String hintText, required int flex}) {
    return Expanded(
      flex: flex,
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: hintText,
          isDense: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
        ),
      ),
    );
  }

  Widget _buildRow({required String text, required int flex}) {
    return Expanded(
      flex: flex,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
