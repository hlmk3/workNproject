/*
  This page is the main screen that displays tasks.
*/

import 'package:flutter/material.dart';
import 'package:worknproject/consts.dart';
import 'package:worknproject/data.dart';
import 'package:worknproject/all_data.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller = ScrollController();
  late List<Data> data;
  @override
  void initState() {
    super.initState();
    data = allData;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(gradient: gradientBackground),
        child: Scaffold(
            backgroundColor: trnClr,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: barHeight,
              centerTitle: false,
              backgroundColor: trnClr,
              elevation: 0,
              title: Container(
                child: logoMain,
              ),
              actions: [
                IconButton(
                    // The exit button navigates to the login page.
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: exitIcon,
                    tooltip: 'Çıkış')
              ],
            ),
            body: Center(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15.0, top: 0.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Görevler',
                        style: TextStyle(color: whiteClr, fontSize: 20.0)),
                  ),
                  const SizedBox(height: 5.0),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.3,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5.0),
                    child: ListView.builder(
                        // List of task cards within a container
                        controller: controller,
                        itemCount: data.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (
                          context,
                          index,
                        ) {
                          return InkWell(
                            onTap: () {
                              // Only a task can be selected at a time.
                              for (int i = 0; i < data.length; i++) {
                                if (i == index) {
                                  data[index].isSelected =
                                      !data[index].isSelected;
                                } else if (data[i].isSelected) {
                                  data[i].isSelected = false;
                                }
                              }
                              setState(() {});
                            },
                            child: Card(
                              color: data[index].isSelected
                                  ? greenClr.withOpacity(0.6)
                                  : bluegrayClr, // Cards change their color gray to green when selected.
                              margin: const EdgeInsets.all(10),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 40.0, bottom: 40.0),
                                child: Center(
                                  child: Text(
                                    '${data[index].taskName}',
                                    style: const TextStyle(
                                        color: whiteClr, fontSize: 16.0),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  gapW20,
                  ElevatedButton(
                      // Break Button / With this button, selected card is disables.
                      style: elvtdStyle,
                      onPressed: () {
                        int j = 0;
                        for (j; j < data.length; j++) {
                          if (data[j].isSelected = true) {
                            data[j].isSelected = false;
                          }
                        }
                        setState(() {});
                      },
                      child: const Text(
                        'Mola Ver',
                        style: buttonTxtStyle,
                      ))
                ],
              ),
            )));
  }
}
