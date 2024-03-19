import 'package:ewallet/screens/auth/login.dart';
import 'package:ewallet/screens/home.dart';
import 'package:ewallet/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    //Todo implement initState
    _checkUserSementara(false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: wAppLoading(),
    );
  }

  void _checkUserSementara(bool user) async {
    await Future.delayed(const Duration(seconds: 2));

    wPushReplaceTo(
      context,
      user ? Home() : Login(),
    );
  }
}
