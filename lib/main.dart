import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/taskScreen.dart';
import 'package:todoy/taskData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ChangeNotifierProvider should be at the top
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
