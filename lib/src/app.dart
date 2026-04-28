import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login_screen.dart';
import 'package:login_bloc/src/blocs/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Login App',
        home: Scaffold(body: LoginScreen()),
      ),
    );
  }
}
