/*
  This page is the login screen.
*/

import 'package:flutter/material.dart';
import 'package:worknproject/consts.dart';
import 'package:worknproject/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHidden = true;
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: loginImgDecor, gradient: gradientBackground),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: barHeight,
          backgroundColor: trnClr,
          elevation: 0,
          actions: [
            IconButton(
              icon: stngIcon,
              tooltip: 'Ayarlar',
              onPressed: () {
                Navigator.pushNamed(context, '/setting_screen');
              },
            ),
          ],
        ),
        backgroundColor: trnClr,
        body: Center(
          child: Form(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                logoLogin, // Logo Container
                gapW20,
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 40,
                  padding: const EdgeInsets.all(5.0),
                  decoration: inputDec,
                  child: TextFormField(
                    // E-mail
                    style: const TextStyle(color: whiteClr),
                    decoration: InputDecoration(
                      isDense: true,
                      icon: const Icon(Icons.person_outline, color: whiteClr),
                      border: InputBorder.none,
                      hintText: 'E-posta',
                      hintStyle: hintTxtStyle,
                    ),
                    onSaved: (value) {
                      email = value!;
                    },
                  ),
                ), // E-Mail Text Field
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  // Password
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 40,
                  padding: const EdgeInsets.all(5.0),
                  decoration: inputDec,
                  child: TextFormField(
                    obscureText: _isHidden,
                    style: const TextStyle(color: whiteClr),
                    decoration: InputDecoration(
                        isDense: true,
                        icon: const Icon(Icons.lock, color: whiteClr),
                        border: InputBorder.none,
                        hintText: 'Şifre',
                        hintStyle: hintTxtStyle,
                        suffixIcon: InkWell(
                          onTap: () {
                            // Password visibilty togle within eye icon. When selected, input is visible.
                            setState(() {
                              _isHidden = !_isHidden;
                            });
                          },
                          child: Icon(
                            _isHidden ? Icons.visibility : Icons.visibility_off,
                            color: whiteClr,
                          ),
                        )),
                    onSaved: (value) {
                      password = value!;
                    },
                  ),
                ), // Parola Text Field
                gapW20,
                loginButton(context),
                gapW20,
                GestureDetector(
                  // Forget password
                  child: frgtTxt,
                  onTap: () {},
                ),
                const SizedBox(height: 150.0)
              ])),
        ),
      ),
    );
  }
}
