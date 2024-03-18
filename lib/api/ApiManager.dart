import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/model/newsResponse/NewsResponse.dart';
import 'package:newsapp/model/sourcesResponse/SourcesResponse.dart';

class ApiManager{
  static const String baseUrl = 'newsapi.org';
  static const String apiKey = "88cdce95c1e146efb1cb6e244f668127";
  static Future<SourcesResponse>getSources(String categoryId) async {
    var uri = Uri.https(baseUrl,'v2/top-headlines/sources',
        {
          "apikey":apiKey,
          "category" : categoryId
        });
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    var sourcesResponse = SourcesResponse.fromJson(json);
    return sourcesResponse;
  }
  static Future<NewsResponse>getNews(String? sourceId) async{
    var url = Uri.https(baseUrl,'v2/everything',{
      'apikey' : apiKey,
      'sources' : sourceId
    });
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    var newsResponse = NewsResponse.fromJson(json);
    return newsResponse;

  }
}