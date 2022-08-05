import 'package:flutter/material.dart';
import 'package:flutter_application_2/provider/count_provider.dart';
import 'package:flutter_application_2/ui/count.dart';
import 'package:flutter_application_2/ui/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'count test',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ChangeNotifierProvider(
        create: (context) {
          return CountProvider();
        },
        child: Home(),
      ),
    );
  }
}
