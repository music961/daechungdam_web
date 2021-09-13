import 'package:daechungdam_web/const/colors.dart';
import 'package:daechungdam_web/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart'; // Listener 사용을 위해 'gestures.dart' import.
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leadingWidth: 80,
        leading: Container(),
        title: Text(
          '댐 주변 청결지킴이 관리자 페이지',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xff00B9ED),
                Color(0xff005596),
              ],
            ),
          ),
        ),
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatefulWidget {
  _Body({Key? key}) : super(key: key);

  @override
  __BodyState createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  var pageIndex = 2;

  final ScrollController _scrollController = ScrollController(); // 컨트롤러 선언.

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (ps) {
        if (ps is PointerScrollEvent) {
          double newOffset = _scrollController.offset + ps.scrollDelta.dy;
          if (newOffset < 0) {
            newOffset = 0;
          } else if (newOffset > _scrollController.position.maxScrollExtent) {
            newOffset = _scrollController.position.maxScrollExtent;
          }
          _scrollController.jumpTo(newOffset);
        }
      },
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 90),
                  _buildHeaderButton(
                      text: '지도화면',
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        topLeft: Radius.circular(8),
                      ),
                      index: 1),
                  _buildHeaderButton(
                      text: '데이터 정리',
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        topLeft: Radius.circular(0),
                      ),
                      index: 2),
                  _buildHeaderButton(
                      text: '계정관리',
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      index: 3),
                ],
              ),
            ),
            pageIndex == 1
                ? MapScreen()
                : pageIndex == 2
                    ? DataScreen()
                    : pageIndex == 3
                        ? AccountScreen()
                        : Container(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderButton(
      {required String text,
      required int index,
      required BorderRadius borderRadius}) {
    return InkWell(
      onTap: () {
        setState(() {
          pageIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.zero,
        height: 47.h,
        width: 151.w,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: pageIndex == index ? Colors.white : defaultBlue,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: pageIndex == index ? defaultBlue : Colors.white,
          borderRadius: index != 2 ? borderRadius : null,
          border: index != 2
              ? Border.all(color: defaultBlue, width: 2.w)
              : Border(
                  top: BorderSide(
                    color: defaultBlue,
                    width: 2.w,
                  ),
                  bottom: BorderSide(
                    color: defaultBlue,
                    width: 2.w,
                  ),
                ),
        ),
      ),
    );
  }
}
