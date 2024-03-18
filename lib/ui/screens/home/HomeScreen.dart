import 'package:flutter/material.dart';
import 'package:newsapp/ui/fragment/Categoriesdetails/CategoriesDetailsFragment.dart';
import 'package:newsapp/ui/fragment/categories/CategoriesFragment.dart';
import 'package:newsapp/ui/fragment/settings/SettingsFragment.dart';
import 'package:newsapp/model/CategoriesModel.dart';
import 'package:newsapp/ui/widget/drawer/DrawerWidget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String titleAppBar = 'News App';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectWidget = CategoriesFragment(titleAppBar, onCategoryItemClick);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage('assets/images/background_pattern.png'),fit: BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(
          actions: [IconButton(splashColor: Colors.transparent,highlightColor: Colors.transparent,onPressed: (){}, icon: Icon(Icons.search_rounded))],
          actionsIconTheme: IconThemeData(
            color: Colors.white,
            size: 32
          ),
          title: Text(titleAppBar),
        ),
        drawer: DrawerWidget(onMenuItemClick),
        body: selectWidget,
      ),
    );
  }

  late Widget selectWidget ;

  void onMenuItemClick(MenuItem item){
    Navigator.pop(context);
    switch(item){
      case MenuItem.categories : {
        selectWidget =  CategoriesFragment(titleAppBar = 'News App', onCategoryItemClick);
      }
      case MenuItem.settings : {
        selectWidget = SettingsFragment(titleAppBar: titleAppBar = 'Setting',);
      }
    }
    setState(() {

    });
  }
  void onCategoryItemClick(CategoriesModel categoriesModel){
    selectWidget = CategoriesDetailsFragment(categoriesModel , titleAppBar = '${categoriesModel.title} News');
    setState(() {

    });
  }
}