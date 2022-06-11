import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popular/PageModel.dart';
import 'package:flutter_popular/route/routes.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.router.push(FirstRoute(pageModel: PageModel('firstPage', true)));
              },
              child: Text('Page1'),
            ),
            TextButton(
              onPressed: () {
                context.router.push(SecondRoute());
              },
              child: Text('Page2'),
            ),
            TextButton(
              onPressed: () {
                context.router.push(ThirdRoute());
              },
              child: Text('Page3'),
            ),
          ],
        ),
      ),
    );
  }
}
