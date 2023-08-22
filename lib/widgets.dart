/* Widgets that used in the project file. */
import 'package:flutter/material.dart';
import 'package:worknproject/consts.dart';

Widget loginButton(BuildContext context) => ElevatedButton(
    // Login button that navigates to the main page when the user logs in.
    style: elvtdStyle,
    child: const Text(
      'Giriş Yap',
      style: buttonTxtStyle,
    ),
    onPressed: () {
      Navigator.pushNamed(context, '/main_screen');
    });

Widget connectButton() => ElevatedButton(
    // The connect button for connecting to the inputed server.
    style: elvtdStyle,
    child: const Text('Bağlan', style: buttonTxtStyle),
    onPressed: () {});
