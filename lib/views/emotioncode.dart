import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/images.dart';

class EmotionCode extends StatefulWidget {
  const EmotionCode({super.key});

  @override
  State<EmotionCode> createState() => _EmotionCodeState();
}

class _EmotionCodeState extends State<EmotionCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Center the app bar title
        automaticallyImplyLeading: false, // Remove the back button
        title: const Text('Emotion Code'), // Add an app bar
      ),
      body: Center(
        child: Image.asset(
          Images.emotionCode,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
