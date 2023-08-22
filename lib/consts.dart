/*
  This file contains the constants used in the project.
*/
import 'package:flutter/material.dart';

const gradientBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF567079), Color(0xFF303B4A)],
    stops: [0.3, 1.0]); // Gradient Background

const whiteClr = Colors.white; // White Color
const blackClr = Colors.black45; // Black Color
const trnClr = Colors.transparent; // Transparent Color
const greenClr = Color(0xFF59A040); // Green Color
const bluegrayClr = Color(0xFF303B49); // Dark Blue-Gray Color

const gapW20 = SizedBox(
  height: 20.0,
); // Vertical space between components of the page.

var barHeight = 80.0; // App Bar Height

var elvtdStyle = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFF75B7CC),
  shadowColor: Colors.blueGrey,
  elevation: 5,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
); // Elevated button style

const loginImgDecor = DecorationImage(
    image: AssetImage('assets/backgroundLogin.png'),
    fit: BoxFit.fill,
    filterQuality:
        FilterQuality.high); // Image of the background of login page.

const stngImgDecor = DecorationImage(
    image: AssetImage('assets/background_settings.png'),
    fit: BoxFit.fill,
    filterQuality:
        FilterQuality.high); // Image of the background of settings page.

var logoMain = Image.asset(
  'assets/logo.png',
  fit: BoxFit.fill,
  height: 30.0,
  width: 200.0,
  alignment: FractionalOffset.centerLeft,
); // Logo at the Main Page

var logoLogin = SizedBox(
    height: 50.0,
    width: 250.0,
    child: Image.asset('assets/logo.png')); // Logo at the Login Page

var hintTxtStyle = TextStyle(
    fontSize: 14.0, color: whiteClr.withOpacity(0.6)); // Hint Text Style

const buttonTxtStyle = TextStyle(
    fontSize: 16.0, color: Color(0xFF303B4A)); // Text Style inside a Button

var inputDec = BoxDecoration(
    color: const Color(0xFFD9D9D9).withOpacity(0.6),
    boxShadow: [
      BoxShadow(color: Colors.black45.withOpacity(0.25), blurRadius: 5)
    ]); // Email and Password textfield decorations.

var frgtTxt = const Text(
  'Şifremi Unuttum',
  style: TextStyle(
    color: whiteClr,
    fontSize: 16.0,
    decoration: TextDecoration.underline,
    decorationThickness: 1,
  ),
); // Text of the forgot password in the login page.

const chckTxt = Text(
  'Açılışta otomatik çalıştır.',
  style: TextStyle(color: whiteClr),
); // Text of checkbox in the settings page.

const srvrTxt = Text('Lütfen sunucu adresini giriniz.',
    style: TextStyle(
        color: whiteClr,
        fontSize:
            14.0)); // Information text above the server address text field in the settings page.

const backIcon =
    Icon(Icons.arrow_back, color: whiteClr); // Back icon in AppBar.

const exitIcon = Icon(Icons.exit_to_app,
    color: whiteClr); // Exit icon in Appbar in the main page.

const stngIcon = Icon(
  Icons.settings,
  color: whiteClr,
); // Settings icon in AppBar
