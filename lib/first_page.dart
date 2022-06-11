import 'package:flutter/material.dart';
import 'package:flutter_popular/PageModel.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key, required this.pageModel}) : super(key: key);

  final PageModel pageModel;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Center(
        child: Text(widget.pageModel.name),
      ),
    );
  }
}
