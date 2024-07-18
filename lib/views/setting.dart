import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../themeProvider.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    bool isDarkMode = themeProvider.themeMode == ThemeMode.dark;
    return Scaffold(
      // backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        centerTitle: true, // Center the app bar title
        automaticallyImplyLeading: false, // Remove the back button
        title: const Text('Settings'), // Add an app bar
      ),
      body: Container(
//color: Colors.deepPurple[50],
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "General",
                style: TextStyle(fontSize: 12, color: Colors.teal),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    // Wrap the Row with GestureDetector
                    onTap: () {
                      // Launch the URL using url_launcher package
                      launchUrl(Uri.parse(
                          'https://discoverhealing.com/legal/#privacypolicy'));
                    },
                    child: const Row(
                      // Inner Row for content
                      children: [
                        Icon(
                          size: 24.0,
                          Icons.privacy_tip,
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          "Privacy Policy",
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Row(
                    // Inner Row for content
                    children: [
                      Icon(
                        size: 24.0,
                        Icons.dark_mode,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        "Dark Mode",
                        style: TextStyle(fontSize: 18.0, color: Colors.black87),
                      ),
                      Switch(
                        value: isDarkMode,
                        onChanged: (value) {
                          themeProvider.toggleTheme(value);
                        },
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    // Wrap the Row with GestureDetector
                    onTap: () {
                      // Launch the URL using url_launcher package
                      launchUrl(Uri.parse(
                          'https://discoverhealing.com/legal/#termsofuse'));
                    },
                    child: const Row(
                      // Inner Row for content
                      children: [
                        Icon(
                          size: 24.0,
                          Icons.file_copy,
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          "Terms of Use",
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    // Wrap the Row with GestureDetector
                    onTap: () {
                      // Launch the URL using url_launcher package
                      // launchUrl(Uri.parse('https://discoverhealing.com/legal/#termsofuse'));
                    },
                    child: const Row(
                      // Inner Row for content
                      children: [
                        Icon(
                          size: 24.0,
                          Icons.help,
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          "Help",
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
