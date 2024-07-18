import 'package:bodycode/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bodycode/utils/routes/rotes_named.dart';
import 'package:bodycode/utils/routes/routes.dart';
import 'package:bodycode/views/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
              useMaterial3: true,
            ),
            darkTheme: ThemeData.dark(),
            themeMode: themeProvider.themeMode,
            initialRoute: RoutesName.splash,
            onGenerateRoute: Routes.generateRoute,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}