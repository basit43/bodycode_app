import 'package:bodycode/views/emotioncode.dart';
import 'package:bodycode/views/setting.dart';
import 'package:flutter/material.dart';

import 'beliefcode.dart';
import 'bodycode.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedIndex = 0; // To keep track of the selected tab
final List<Widget> widgetOptions = <Widget>[
  // Replace these widgets with the content for each tab
  const EmotionCode(),
  const BodyCode(),
  const BeliefCode(),
  const Setting()
];

class _HomeScreenState extends State<HomeScreen> {
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions
            .elementAt(selectedIndex), // Display content based on selected tab
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:
                Icon(Icons.emoji_emotions_outlined), // Set icon color to white
            label: 'Emotion Code',
            backgroundColor:
                Colors.white, // Set background color to white (optional)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart_outlined), // Set icon color to white
            label: 'Body Code',
            backgroundColor:
                Colors.white, // Set background color to white (optional)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_outlined), // Set icon color to white
            label: 'Belief Code',
            backgroundColor:
                Colors.white, // Set background color to white (optional)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), // Set icon color to white
            label: 'Settings',
            backgroundColor:
                Colors.white, // Set background color to white (optional)
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.purple, // Set selected item color to purple
        onTap: onItemTapped,
        unselectedItemColor:
            Colors.grey, // Set unselected item color to white (optional)
      ),
    );
  }
}
