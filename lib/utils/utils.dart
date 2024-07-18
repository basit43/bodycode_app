import 'dart:collection';

import 'package:flutter/material.dart';
import '../resources/explanations.dart';

class Utils {



  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.red,
      content: Text(message),
    ));
  }
}

