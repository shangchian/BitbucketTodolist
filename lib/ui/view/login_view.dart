import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/ui/view/base_view.dart';
import 'package:untitled1/viewmodel/login_view_model.dart';

import '../../generated/l10n.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 取得屏幕尺寸
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // 根據屏幕尺寸計算 bottom 和 right 的值
    final double bottomValue = screenHeight * 0.1; // 距離底部的百分比
    final double rightValue = screenWidth * 0.05; // 距離右側的百分比

    return BaseView(
      builder: (context, model, child) {
        return Container(
            color: Colors.white, // 背景色：白色
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      model.signIn(context);
                    },
                    label: Text(S.current.google_login),
                    icon: Image.asset('assets/image/google_icon.png',
                        width: 50, height: 50),
                  ),
                ),
                Positioned(
                  bottom: bottomValue, // 根據需要調整位置
                  right: rightValue, // 根據需要調整位置
                  child: FloatingActionButton(
                    backgroundColor: Colors.blue,
                    onPressed: () {
                      // 第二個按鈕的動作
                    },
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ));
      },
      modelProvider: () => LoginViewModel(),
    );
  }
}
