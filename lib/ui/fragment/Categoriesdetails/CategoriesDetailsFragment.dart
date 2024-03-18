import 'package:flutter/material.dart';
import 'package:newsapp/api/ApiManager.dart';
import 'package:newsapp/model/CategoriesModel.dart';
import 'package:newsapp/ui/widget/SourceTab/SourcesTabsWidget.dart';

class CategoriesDetailsFragment extends StatelessWidget {
  CategoriesDetailsFragment(this.categoriesModel , this.titleAppBar);
  CategoriesModel categoriesModel;
  String titleAppBar;
  @override
  Widget build(BuildContext context) {

    return FutureBuilder(future: ApiManager.getSources(categoriesModel.id), builder: (context, snapshot) {
      if(snapshot.connectionState ==  ConnectionState.waiting){
        return Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor,));
      }
      else if(snapshot.hasError || snapshot.data?.status == 'error'){
        return Center(
          child: Column(
            children: [
              Text(snapshot.data?.message ?? snapshot.error.toString()),
              ElevatedButton(onPressed: (){}, child: Text('Try Again'))
            ],
          ),
        );
      }
      var sourcesList = snapshot.data?.sources;
      return SourcesTabsWidget(sourcesList!);
    },);

  }
}
