import 'package:flutter/material.dart';

typedef OnMenuItemClick = void Function(MenuItem clickedItemPos);
class DrawerWidget extends StatelessWidget {
  static const int categories = 0;
  static const int settings = 1;
  OnMenuItemClick onMenuItemClick;
  DrawerWidget(this.onMenuItemClick);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 48),
            color: Theme.of(context).primaryColor,
            child: const Text(
              'News App!',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: 24),
            ),
          ),
          SizedBox(height: height*0.02,),
          Padding(
            padding: EdgeInsets.only(left: width*0.03),
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: (){
                onMenuItemClick(MenuItem.categories);
              },
              child: Row(
                children: [
                  Image.asset('assets/images/Icon awesome-th-list.png'),
                  SizedBox(width: width*0.04,),
                  const Text(
                    'Categories',
                    style: TextStyle(
                        color: Color(0xff303030),
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height*0.02,),
          Padding(
            padding: EdgeInsets.only(left: width*0.03),
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: (){
                onMenuItemClick(MenuItem.settings);
              },
              child: Row(
                children: [
                  Image.asset('assets/images/Icon ionic-md-settings.png'),
                  SizedBox(width: width*0.04,),
                  const Text(
                    'Settings',
                    style: TextStyle(
                        color: Color(0xff303030),
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum MenuItem{
  categories,
  settings
}
