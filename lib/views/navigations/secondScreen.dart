import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../resources/images.dart';
import '../../utils/routes/rotes_named.dart';
import '../home.dart';

class SecondScreen extends StatefulWidget {
  final String parentScreen;
  const SecondScreen({
    super.key,
    required this.parentScreen,
  });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      if (selectedIndex == 0 ||
          selectedIndex == 1 ||
          selectedIndex == 2 ||
          selectedIndex == 3) {
        Navigator.pushReplacementNamed(context, 'HomeScreen');
      }
    });
  }

  List<Map<String, String>> data = [
    {
      'imageUrl': '${Images.energy}',
      'text': 'Post Traumatic',
      'screen': RoutesName.beforeTextScreen
    },
  ];

  @override
  void initState() {
    debugPrint("parentScreen: ${widget.parentScreen}");
    setScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Second Screen');
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.white10,
      appBar: AppBar(
        centerTitle: true, // Center the app bar title
        title: Text('${widget.parentScreen}'), // Add an app bar
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white10,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: AlignedGridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              // crossAxisSpacing:1,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, data[index]['screen']!,
                        arguments: data[index]['text']);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust corner radius as needed
                      ),
                      surfaceTintColor: Colors.white,
                      color: Colors.white,
                      elevation: 2,
                      child: Column(
                        children: [
                          // Display image
                          const SizedBox(
                            height: 15,
                          ),
                          Stack(//textScreen
                              children: [
                            Image.asset(
                              data[index]['imageUrl']!,
                              fit: BoxFit.cover, // Adjust image fit as needed
                              height: height * 0.16, // Adjust image height
                            ),
                            data[index]['screen'] == 'textScreen'
                                ? Positioned(
                                    right: 20,
                                    bottom: 0,
                                    child: ClipOval(
                                        child: Container(
                                            color: Colors.white,
                                            child: const Padding(
                                              padding: EdgeInsets.all(6.0),
                                              child: Icon(
                                                Icons.copy,
                                                size: 15,
                                              ),
                                            ))))
                                : const SizedBox.shrink()
                          ]),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              data[index]['text']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 14.0),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
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

  void setScreen() {
    if (widget.parentScreen == "Energy") {
      data = [
        {
          'imageUrl': Images.postTraumatic,
          'text': 'Post Traumatic',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.allergyOrInto,
          'text': 'Allergy or Intolerance',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.offensive,
          'text': 'Offensive',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.emotional,
          'text': 'Emotional',
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.mental,
          'text': 'Mental',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.reverberation,
          'text': 'Reverberation',
          'screen': RoutesName.beforeTextScreen
        },
        // Add more items here
      ];
    } else if (widget.parentScreen == "Pathogen") {
      data = [
        {
          'imageUrl': Images.pathogen,
          'text': 'Physical Pathogen',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.energyOfPathogen,
          'text': 'Energy of Pathogen',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == 'Pollution') {
      data = [
        {
          'imageUrl': Images.airPollution,
          'text': 'Air Pollution',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.waterPollution,
          'text': 'Water Pollution',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.plastics,
          'text': 'Plastics',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Circuit or System") {
      data = [
        {
          'imageUrl': Images.disconnection,
          'text': 'Disconnection',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.organ,
          'text': 'Organ',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.system,
          'text': 'System',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.gland,
          'text': 'Gland',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.bodyCycleOf,
          'text': 'Body Cycle or Rhythm',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.energyBody,
          'text': 'Energy Body',
          'screen': RoutesName.beforeTextScreen
        },
        // Add more items here
      ];
    } else if (widget.parentScreen == "Misalignment") {
      data = [
        {
          'imageUrl': Images.systemMis,
          'text': 'System or Micromanaging',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.skeleton,
          'text': 'Skeleton',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.commonMisalignment,
          'text': 'Common Misalignment',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.softTissue,
          'text': 'Soft Tissues',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.chakraMis,
          'text': 'Chakra',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.meridian,
          'text': 'Meridian',
          'screen': RoutesName.beforeTextScreen
        },

        // Add more items here
      ];
    } else if (widget.parentScreen == "Toxin") {
      data = [
        {
          'imageUrl': Images.dentalToxin,
          'text': 'Dental Toxin',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.heavyMetal,
          'text': 'Heavy Metal',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.biologicalPoison,
          'text': 'Biological Poison',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.excess,
          'text': 'Excess',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.foodToxin,
          'text': 'Food Toxin',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.electromagneticRadiation,
          'text': 'Electromagnetic Radiation',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.drug,
          'text': 'Drug',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.environmental,
          'text': 'Environmental',
          'screen': RoutesName.beforeTextScreen
        },

        // Add more items here
      ];
    } else if (widget.parentScreen == 'Pernicious Influence') {
      print('000000000');
    } else if (widget.parentScreen == "Nutrition or Lifestyle") {
      data = [
        {
          'imageUrl': Images.sleep,
          'text': 'Sleep',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.nutrition,
          'text': 'Nutrition',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.outsideNeed,
          'text': 'Outside Need',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.herbAndSpice,
          'text': 'Herb & Spice',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.magneticField,
          'text': 'Magnetic Field',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.essentialOil,
          'text': 'Essential Oil',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.colorImbalance,
          'text': 'Color Imbalance',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.hydration,
          'text': 'Hydration',
          'screen': RoutesName.beforeTextScreen
        },
        // Add more items here
      ];
    }
  }
}
