import 'package:newsapp/model/sourcesResponse/Source.dart';


/// source : {"id":"ars-technica","name":"Ars Technica"}
/// author : "Michael Teo Van Runkle"
/// title : "2025 Maserati Grecale Folgore review: A stylish SUV, but a hard EV sell"
/// description : "2025 Maserati Grecale Folgore review: A stylish SUV, but a hard EV sellarstechnica.com"
/// url : "https://arstechnica.com/cars/2024/03/2025-maserati-grecale-folgore-review-a-stylish-suv-but-a-hard-ev-sell/"
/// urlToImage : "https://cdn.arstechnica.net/wp-content/uploads/2024/03/Maserati-Grecale-Folgore-AT-5-760x380.jpg"
/// publishedAt : "2024-03-16T23:02:39Z"
/// content : "Enlarge/ Maserati's first electric SUV looks good, but the weight ruins the handling.\r\n0\r\nMaserati provided flights from Los Angeles to Bari and accommodation so Ars could drive the new Grecale Folgo… [+3069 chars]"

class News {
  News({
      this.source, 
      this.author, 
      this.title, 
      this.description, 
      this.url, 
      this.urlToImage, 
      this.publishedAt, 
      this.content,});

  News.fromJson(dynamic json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;
News copyWith({  Source? source,
  String? author,
  String? title,
  String? description,
  String? url,
  String? urlToImage,
  String? publishedAt,
  String? content,
}) => News(  source: source ?? this.source,
  author: author ?? this.author,
  title: title ?? this.title,
  description: description ?? this.description,
  url: url ?? this.url,
  urlToImage: urlToImage ?? this.urlToImage,
  publishedAt: publishedAt ?? this.publishedAt,
  content: content ?? this.content,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (source != null) {
      map['source'] = source?.toJson();
    }
    map['author'] = author;
    map['title'] = title;
    map['description'] = description;
    map['url'] = url;
    map['urlToImage'] = urlToImage;
    map['publishedAt'] = publishedAt;
    map['content'] = content;
    return map;
  }

}