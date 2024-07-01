import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking/utils/custom_navigation_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
            surface: Colors.grey.shade100,
            onSurface: Colors.black,
            primary: const Color(0xFF7476ED),
            secondary: const Color(0xFF4D53ED),
            tertiary: const Color(0xFF4146B2),
            outline: Colors.grey),
        useMaterial3: true,
      ),
      home: const CustomNavigationBar(),
    );
  }
}
