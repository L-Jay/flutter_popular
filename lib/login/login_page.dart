import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popular/login/login_manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.successCallback}) : super(key: key);

  // 只登录等成功回调。失败不回调，resolver.next(success)只能调用一次，第二次报错
  final Function(bool success) successCallback;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                LoginManager.isLogin = true;
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
