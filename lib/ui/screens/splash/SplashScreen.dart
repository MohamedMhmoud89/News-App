import 'package:flutter/material.dart';
import 'package:newsapp/ui/screens/home/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splashScreen';

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    }
    );
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage('assets/images/background_pattern.png'),
            fit: BoxFit.fill),
      ),
      child: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
