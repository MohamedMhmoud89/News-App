import 'package:flutter/material.dart';
import 'package:newsapp/model/newsResponse/News.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:newsapp/ui/screens/newsDetails/NewsDetailsScreen.dart';


class NewsWidget extends StatelessWidget {
  News news;
  NewsWidget(this.news);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.7, vertical: 20.5),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return NewsDetailsScreen(
                  author: news.author??"",
                  content: news.content??"",
                  imagePath: news.urlToImage??"",
                  newsTitle: news.title??"",
                  date: news.publishedAt??"",
                  urlWebSite: news.url??"",
                );
              },
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                height: 220,
                fit: BoxFit.fill,
                width: double.infinity,
                imageUrl: news.urlToImage ??
                    "https://c0.wallpaperflare.com/preview/105/94/569/administration-articles-bank-black-and-white.jpg",
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                        child: CircularProgressIndicator(
                  value: downloadProgress.progress,
                  color: Theme.of(context).primaryColor,
                )),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              '${news.author ?? ""}',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'Poppins',
                color: Color(0xff79828B),
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              '${news.title ?? ""}',
              style: TextStyle(
                  color: Color(0xff42505C),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              textAlign: TextAlign.start,
            ),
            Text(
              '${news.publishedAt ?? ""}',
              style: TextStyle(
                  color: Color(0xffA3A3A3),
                  fontSize: 13,
                  fontFamily: 'Montserrat'),
              textAlign: TextAlign.end,
            )
          ],
        ),
      ),
    );
  }
}
