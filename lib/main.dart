import 'package:ecss_hack_24/app_provider.dart';
import 'package:ecss_hack_24/deps.dart';
import 'package:ecss_hack_24/navigation.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  setupDeps();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ECSS Hackathon 2024',
      theme: FlexThemeData.light(
        scheme: FlexScheme.deepOrangeM3,
        useMaterial3: true,
        fontFamily: GoogleFonts.josefinSans().fontFamily,
      ),
      builder: (context, child) {
        child = MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: AppProvider.instance),
          ],
          child: child,
        );
        return child;
      },
      routerConfig: router,
    );
  }
}
