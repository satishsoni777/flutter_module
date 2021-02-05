import 'package:flutter/material.dart';
import 'package:flutter_module_poc/src/auth_page.dart';
import 'package:flutter_common_poc/flutter_common_poc.dart';
import 'package:flutter_module_poc/src/webservices/base_req_impl.dart';

void main() {
  Injector.getIt.registerSingleton<BaseRequest>(BaseRequestImpl());
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
        // "/screen1": (c) => Screen1(),
        "/auth": (c) => AuthPage()
      },
    );
  }
}
