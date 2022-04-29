import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_diary/app/core/utils/extension.dart';
import 'package:workout_diary/app/ui/report_page/widgets/card.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ReportPage extends GetView {
  ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: null,
        ),
        title: Text(
          '2022-04-26',
          style: TextStyle(
            color: Colors.black,
            fontSize: 5.0.wp,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Done',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 4.0.wp,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        overlayColor: Colors.black,
        overlayOpacity: 0.4,
        spacing: 12,
        spaceBetweenChildren: 10,
        activeBackgroundColor: Colors.black,
        activeForegroundColor: Colors.white,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.mail),
            label: '노멀',
            backgroundColor: Colors.red[300],
            onTap: () {},
          ),
          SpeedDialChild(
              child: const Icon(Icons.mail), label: '드롭', onTap: () {}),
          SpeedDialChild(
              child: const Icon(Icons.mail), label: '슈퍼', onTap: () {}),
          SpeedDialChild(
              child: const Icon(Icons.mail), label: '컴파운드', onTap: () {}),
          SpeedDialChild(
              child: const Icon(Icons.mail), label: '피라미드', onTap: () {}),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        //selectedItemColor: Colors.white,
        //unselectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black,
        currentIndex: 2,
        showSelectedLabels: true,
        onTap: (_) {},

        items: const [
          BottomNavigationBarItem(
            label: 'Favoirtes',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Favoirtes',
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: 'Favoirtes',
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            label: 'Favoirtes',
            icon: Icon(Icons.library_books),
          ),
        ],
      ),
    );
  }
}
