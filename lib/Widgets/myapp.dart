import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/increment_provider.dart';
import 'home_page.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value:Counter(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: MyHomePage(),
      ),
    );
  }
}