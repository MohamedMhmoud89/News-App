import 'package:flutter/material.dart';

class SettingsFragment extends StatelessWidget {
  String titleAppBar;
  SettingsFragment({required this.titleAppBar});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(29),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Language',
            style: TextStyle(
                color: Color(0xff303030),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 48,
              width: 319,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 1,
                      style: BorderStyle.solid)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'English',
                    style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        color: Theme.of(context).primaryColor),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Theme.of(context).primaryColor,
                    size: 28,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
