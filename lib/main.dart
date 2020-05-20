import 'package:flutter/material.dart';
import 'package:fluttersql/view/user_list/user_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: UserList(),
    );
  }
}
