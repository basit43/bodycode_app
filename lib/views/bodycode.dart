import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../resources/images.dart';
import '../utils/routes/rotes_named.dart';

class BodyCode extends StatefulWidget {
  const BodyCode({super.key});

  @override
  State<BodyCode> createState() => _BodyCodeState();
}

class _BodyCodeState extends State<BodyCode> {
  // Replace with your actual data
  final List<Map<String, String>> data = [
    {
      'imageUrl': Images.energy,
      'text': 'Energy',
      'screen': RoutesName.secondScreen
    },
    {
      'imageUrl': Images.pathogen,
      'text': 'Pathogen',
      'screen': RoutesName.secondScreen
    },
    {
      'imageUrl': Images.circuitOrS,
      'text': 'Circuit or System',
      'screen': RoutesName.secondScreen
    },
    {
      'imageUrl': Images.misalignment,
      'text': 'Misalignment',
      'screen': RoutesName.secondScreen
    },
    {
      'imageUrl': Images.toxin,
      'text': 'Toxin',
      'screen': RoutesName.secondScreen
    },
    {
      'imageUrl': Images.nutritionOrLife,
      'text': 'Nutrition or Lifestyle',
      'screen': RoutesName.secondScreen
    },
    // Add more items here
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.white10,
      appBar: AppBar(
        centerTitle: true, // Center the app bar title
        automaticallyImplyLeading: false, // Remove the back button
        title: Text('Body Code'), // Add an app bar
      ),
      body: SafeArea(
        child: Container(
          //   color: Colors.white12,
          color: Colors.white24,
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
                            25.0), // Adjust corner radius as needed
                      ),
                      surfaceTintColor: Colors.white,
                      color: Colors.white,
                      elevation: 2,
                      child: Column(
                        children: [
                          // Display image
                          SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            data[index]['imageUrl']!,
                            fit: BoxFit.cover, // Adjust image fit as needed
                            height: height * 0.16, // Adjust image height
                          ),
                          // Display text
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              data[index]['text']!,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                          SizedBox(
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
    );
  }
}
