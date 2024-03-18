import 'package:flutter/material.dart';
import 'package:newsapp/model/CategoriesModel.dart';

class CategoriesWidget extends StatelessWidget {
   CategoriesWidget({
    required this.categoriesModel,
     required this.index
  });

  CategoriesModel categoriesModel;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 11),
      height: 171,
      width: 148,
      decoration: BoxDecoration(
          color: categoriesModel.color,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: index%2 ==0 ? Radius.circular(25) : Radius.circular(0),
              bottomRight: index%2 ==0 ? Radius.circular(0) : Radius.circular(25)
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(categoriesModel.imagePath,height: 120,),
          Text(categoriesModel.title , style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontFamily: 'Exo'
          ),)
        ],
      ),
    );
  }
}