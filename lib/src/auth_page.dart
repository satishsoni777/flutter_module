import 'package:flutter/material.dart';
import 'package:flutter_common_poc/flutter_common_poc.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("Auth Page"),
          onPressed: () {
            Navigator.pushNamed(context, Injector.getIt.get<Routes>().home);
          },
        ),
      ),
      appBar: AppBar(
        title: Text("Flutter module"),
      ),
    );
  }
}
