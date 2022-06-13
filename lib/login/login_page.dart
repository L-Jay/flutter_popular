import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popular/login/login_manager.dart';
import 'package:flutter_popular/login/user_info_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.successCallback}) : super(key: key);

  // 只登录等成功回调。失败不回调，resolver.next(success)只能调用一次，第二次报错
  final Function(bool success) successCallback;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                String jsonStr = '''
    {
    "userId": 5486,
    "name": "崔志伟",
    "avatarUrl": "https://img2.woyaogexing.com/2022/06/11/51c3e70810ca37c1!400x400.jpg"
}
    ''';

                UserInfoModel model = UserInfoModel.fromJson(json.decode(jsonStr));
                print(model.name);

                LoginManager.userInfoModel = model;
                context.router.pop();
                widget.successCallback(true);
              },
              child: Text('登录成功'),
            ),
            TextButton(
              onPressed: () {
                LoginManager.logout();
              },
              child: Text('登录失败'),
            ),
          ],
        ),
      ),
    );
  }
}
