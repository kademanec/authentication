import 'package:flutter/material.dart';
import 'package:flutter_app5/auth.dart';
import 'package:flutter_app5/auth_provider.dart';
import 'package:flutter_app5/root_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthProvider(
      auth: Auth(),
      child: MaterialApp(
        title: 'Flutter app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RootPage(),
      ),
    );
  }
}