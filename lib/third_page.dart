import 'package:flutter/material.dart';
import 'package:flutter_popular/login/login_manager.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Page')),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(LoginManager.userInfoModel?.avatarUrl ?? ''),
            Text(LoginManager.userInfoModel?.userId.toString() ?? '', style: TextStyle(fontSize: 20)),
            Text(LoginManager.userInfoModel?.name ?? '', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
