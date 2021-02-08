import 'package:flutter/material.dart';
import 'package:flutter_module_poc/src/auth_page.dart';
import 'package:flutter_common_poc/flutter_common_poc.dart';

void main() {
  Injector.setup();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var initialRoute = '/init_app';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: initialRoute,
      // onGenerateRoute: (){},
      routes: {
        "/init_app": (c) => InitApp(),
        "/auth": (c) => AuthPage(),
      },
    );
  }
}
