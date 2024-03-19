import 'package:ewallet/widgets/widget_auth.dart';
import 'package:ewallet/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _email = TextEditingController();
  bool _isLoading = false;

  Widget _inputEmail() {
    return Container(
      child: TextField(
        controller: _email,
        decoration: InputDecoration(
          hintText: 'Email',
          helperText: 'Enter your email!',
        ),
      ),
    );
  }

  Widget _inputSubmit() {
    return wInputSubmit(
      title: 'Send',
      onPressed: _loginSemetara,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: _isLoading
          ? wAppLoading()
          : Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
              ),
              resizeToAvoidBottomInset: false,
              body: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    wAuthTitle(
                      title: 'Forgot Password',
                      subtitle:
                          'Enter your email and we\'ll send you a link \nto reset yout password',
                    ),
                    _inputEmail(),
                    SizedBox(height: 20),
                    _inputSubmit(),
                  ],
                ),
              )),
    );
  }

  void _loginSemetara() async {
    if (_email.text.isNotEmpty) {
      setState(() {
        _isLoading = true;
      });
      print('Berhasil');
      await Future.delayed(Duration(seconds: 2));
      wShowToast('Email Sended! Please check your email to reset password.');
      Navigator.pop(context);
    } else {
      print('Gagal');
    }
  }
}
