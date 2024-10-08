import 'package:flutter/material.dart';
import '/src/screens/home_screen.dart';
import '/src/screens/profile_screen.dart';
import 'src/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        checkerboardOffscreenLayers: false,
        title: 'Coupon App',
        theme: ThemeData(
          fontFamily: 'Rubik',
          brightness: Brightness.light,
          primaryColor: primaryColor,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: primaryColor,
            secondary: accentColor,
            surface: backgroundColor,
          ),
          scaffoldBackgroundColor: backgroundColor,
          buttonTheme: const ButtonThemeData(
            buttonColor: buttonColor,
            textTheme: ButtonTextTheme.primary,
          ),
          appBarTheme: const AppBarTheme(
              // color: appBarColor,
              ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/profile': (context) => const ProfileScreen(),
          // '/settings': (context) => const ProfileScreen(),
        },
      ),
    );
  }
}
