import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

///Widget AuthTitle
Widget wAuthTitle({required String title, required String subtitle}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 3),
        Text(subtitle),
      ],
    ),
  );
}

///Widget Divider
Widget wTextDivider() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: const <Widget>[
        Expanded(
          child: Divider(),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'OR CONECT WITH',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
          child: Divider(),
        ),
      ],
    ),
  );
}

///Widget signInGoogle
Widget wGoogleSignIn({VoidCallback? onPressed}) {
  return Container(
    // width: double.infinity,
    child: ElevatedButton.icon(
      icon: Icon(MdiIcons.google),
      label: Text('Google'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            Colors.grey), // Mengubah warna latar belakang menjadi abu-abu
      ),
      onPressed: onPressed,
    ),
  );
}

///Register
Widget wTextLink(
    {required String text, required String title, VoidCallback? onTap}) {
  return Container(
    margin: EdgeInsets.only(top: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        GestureDetector(
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.transparent,
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onTap: onTap),
      ],
    ),
  );
}
