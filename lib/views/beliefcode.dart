import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/images.dart';

class BeliefCode extends StatefulWidget {
  const BeliefCode({super.key});

  @override
  State<BeliefCode> createState() => _BeliefCodeState();
}

class _BeliefCodeState extends State<BeliefCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Center the app bar title
        automaticallyImplyLeading: false, // Remove the back button
        title: const Text('Belief Code'), // Add an app bar
      ),
      body: Center(
        child: Image.asset(
          Images.beliefCode,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
