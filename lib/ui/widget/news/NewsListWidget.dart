import 'package:flutter/material.dart';
import 'package:newsapp/api/ApiManager.dart';
import 'package:newsapp/model/sourcesResponse/Source.dart';
import 'package:newsapp/ui/widget/news/NewsWidget.dart';

class NewsListWidget extends StatelessWidget {
  Source source;
  NewsListWidget(this.source);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManager.getNews(source.id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ));
          } else if (snapshot.hasError || snapshot.data?.status == "error") {
            return Center(
              child: Column(
                children: [
                  Text(snapshot.data?.message ?? snapshot.error.toString()),
                  ElevatedButton(onPressed: () {}, child: Text('Try Again'))
                ],
              ),
            );
          }
          var newsList = snapshot.data?.articles;
          return ListView.builder(
            itemCount: newsList?.length ?? 0,
            itemBuilder: (context, index) {
              return NewsWidget(newsList![index]);
            },
          );
        });
  }
}
