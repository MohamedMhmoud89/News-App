import 'package:flutter/material.dart';
import 'package:newsapp/model/CategoriesModel.dart';
import 'package:newsapp/ui/widget/Categories/CategoriesWidget.dart';

typedef OnCategoryClick = void Function(CategoriesModel categoriesModel );
class CategoriesFragment extends StatelessWidget {
  OnCategoryClick onCategoryClick;
  String titleAppBar;
  CategoriesFragment(this.titleAppBar , this.onCategoryClick);
  List<CategoriesModel> categories = CategoriesModel.getAllCategories();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ''' Pick your category 
of interest ''',
              style: TextStyle(
                  color: Color(0xff4F5A69),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 20),
                itemBuilder: (context, index) => InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      onCategoryClick(categories[index]);
                    },
                    child: CategoriesWidget(
                      categoriesModel: categories[index],
                      index: index,
                    )),
                itemCount: categories.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
