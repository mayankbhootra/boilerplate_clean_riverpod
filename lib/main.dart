import 'package:boilerplate_login/features/presentation/pages/login_page.dart';
import 'package:boilerplate_login/on_generate_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Template',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      onGenerateRoute: OnGenerateRoute.route,
      initialRoute: "/",
      routes: {
        "/": (context) {
          return const LoginPage();
        },
      },
    );
  }
}
