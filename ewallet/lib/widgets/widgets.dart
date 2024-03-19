import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:fluttertoast/fluttertoast.dart';

///Widget Loading Aplication
Widget wAppLoading() {
  return Center(
    child: Platform.isIOS
        ? CupertinoActivityIndicator()
        : CircularProgressIndicator(),
  );
}

// Future wPushTo(BuildContext context, Widget Function() widget) {
//   return Navigator.pushReplacement(
//     context,
//     MaterialPageRoute(builder: (context) => widget),
//   );
// }

///Navigator Push
Future<void> wPushTo(BuildContext context, Widget widget) async {
  await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

///Navigator PushReplace
Future<void> wPushReplaceTo(BuildContext context, Widget widget) async {
  await Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

///Widget submitButton
Widget wInputSubmit({required String title, VoidCallback? onPressed}) {
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            Colors.blue), // Mengatur warna latar belakang tombol menjadi biru
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: onPressed,
    ),
  );
}

Future wShowToast(String msg) {
  return Fluttertoast.showToast(
      msg: msg,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_LONG);
}
