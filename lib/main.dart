import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luzo_interview/features/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return DevicePreview(
      enabled: false,
      builder: (BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          theme: ThemeData(
            textTheme: GoogleFonts.montserratTextTheme(textTheme),
            useMaterial3: true,
          ),
          home: HomeScreen(),
        );
      },
    );
  }
}
