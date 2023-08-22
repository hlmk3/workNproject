/*
  This page is the Settings Screen for user to set the server address.
*/
import 'package:flutter/material.dart';
import 'package:worknproject/widgets.dart';
import 'package:worknproject/consts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {
    super.initState();
    _loadPref();
  }

  bool _isChecked = false;
  _savePref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('_isChecked', _isChecked);
    });
  } // To save the preference of checkbox, shared preferences is used.

  _loadPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isChecked = (prefs.getBool('_isChecked')) ?? false;
    });
  }

  String serverName = '';

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: stngImgDecor, gradient: gradientBackground),
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: barHeight,
            backgroundColor: trnClr,
            elevation: 0,
            leading: IconButton(
              // AppBar back button that navigates to the login page.
              icon: backIcon,
              tooltip: 'Geri',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          backgroundColor: trnClr,
          body: Center(
              child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                srvrTxt,
                gapW20,
                Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 40,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: whiteClr.withOpacity(0.6),
                        boxShadow: [
                          BoxShadow(
                              color: blackClr.withOpacity(0.25), blurRadius: 5)
                        ]),
                    child: TextFormField(
                      // Server address input field.
                      style: const TextStyle(color: whiteClr),
                      decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          hintText: 'Sunucu Adresi',
                          hintStyle: hintTxtStyle),
                      onSaved: (value) {
                        serverName = value!;
                      },
                    )),
                gapW20,
                connectButton(),
                gapW20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                          _savePref();
                        });
                      },
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    chckTxt
                  ],
                ),
                const SizedBox(height: 200.0)
              ],
            ),
          )),
        ));
  }
}
