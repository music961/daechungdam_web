import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      padding: EdgeInsets.all(30),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  ListView _activityList() {
    return ListView.builder(
      itemCount: 40,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            print('$index 게시물 클릭');
          },
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            text:
                                // '${snapshot.data.data[index].rpCon1}',
                                '신고내용최대열두글자넘김신고내용최대열두글자넘김신고내용최대열두글자넘김',
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(width: 84.w),
                      Text(
                        // '${snapshot.data.data[index].rpDate}',
                        '2021/09/02',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Color(0xff4A4A4A),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 7.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '녹조',
                        // '${snapshot.data.data[index].rpType}',
                        style: TextStyle(
                            color: Color(0xff6D6D6D), fontSize: 13.sp),
                      ),
                      Text(
                        // '제보자 [${snapshot.data.data[index].userNm}]',
                        '제보자 [마체테1]',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Color(0xff6D6D6D),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Divider(
                height: 1.h,
                thickness: 1,
                color: Color(0xffD5D5D5),
              ),
            ],
          ),
        );
      },
    );
  }
}
