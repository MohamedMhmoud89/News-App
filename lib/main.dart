import 'package:flutter/material.dart';
import 'package:newsapp/ui/screens/home/HomeScreen.dart';
import 'package:newsapp/ui/screens/splash/SplashScreen.dart';

void main(){
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (_) => SplashScreen(),
        HomeScreen.routeName : (_) => HomeScreen(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          toolbarHeight: 75,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(
            fontFamily: 'Exo',
            color: Colors.white,
            fontSize: 22
          ),
          centerTitle: true,
          backgroundColor: Color(0xff39A552),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(24),bottomLeft: Radius.circular(24))
          )
        ),
        primaryColor: const Color(0xff39A552),
        useMaterial3: true
      ),
    );
  }
}
