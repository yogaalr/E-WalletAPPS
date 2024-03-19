import 'package:ewallet/screens/auth/forgot_password.dart';
import 'package:ewallet/screens/home.dart';
import 'package:ewallet/widgets/widget_auth.dart';
import 'package:ewallet/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _obscureText = true;
  bool _isLoading = false;

  Widget _inputEmail() {
    return Container(
      child: TextField(
        controller: _email,
        decoration: InputDecoration(
          hintText: 'Email',
        ),
      ),
    );
  }

  Widget _inputPassword() {
    return Stack(
      children: <Widget>[
        Container(
          child: TextField(
            controller: _password,
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {
              setState(() => _obscureText = !_obscureText);
            },
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey[600],
            ),
          ),
        )
      ],
    );
  }

  Widget _inputSubmit() {
    return wInputSubmit(
      title: 'Login',
      onPressed: _loginSemetara,
    );
  }

  Widget _forgotPassword() {
    return GestureDetector(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          color: Colors.transparent,
          padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
          child: Text(
            'Forgot Password?',
          ),
        ),
      ),
      onTap: () => wPushTo(context, ForgotPassword()),
    );
  }

  Widget _textRegister() {
    return wTextLink(
        text: 'Dont have an account yet ?', title: 'Register', onTap: () {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: _isLoading
          ? wAppLoading()
          : Scaffold(
              resizeToAvoidBottomInset: false,
              body: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    wAuthTitle(
                      title: 'Login',
                      subtitle: 'Enter your email & password',
                    ),
                    _inputEmail(),
                    _inputPassword(),
                    _forgotPassword(),
                    _inputSubmit(),
                    wTextDivider(),
                    wGoogleSignIn(),
                    _textRegister()
                  ],
                ),
              )),
    );
  }

  void _loginSemetara() async {
    if (_email.text == 'demo@gmail.com' && _password.text == '123123') {
      setState(() {
        _isLoading = true;
      });
      await Future.delayed(Duration(seconds: 2));
      wPushReplaceTo(context, Home());
    } else {
      print('Gagal');
    }
  }
}
