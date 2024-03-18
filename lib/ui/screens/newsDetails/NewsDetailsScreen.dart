import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class NewsDetailsScreen extends StatelessWidget {
  NewsDetailsScreen(
      {this.newsTitle, this.author, this.content, this.date, this.imagePath,this.urlWebSite});
  String? newsTitle;
  String? author;
  String? content;
  String? date;
  String? imagePath;
  String? urlWebSite;
  static const String routeName = 'newsdetials';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    final Uri url = Uri.parse(urlWebSite!);
    Future<void> _launchUrl() async {
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/images/background_pattern.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(newsTitle ?? ""),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right:15 , top: 20 , bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    imagePath??"",
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: height*0.01,),
                Text(
                  author ??"",
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    color: Color(0xff79828B),
                  ),
                ),
                SizedBox(height: height*0.01,),
                Text(
                    newsTitle??"",
                  style: TextStyle(
                      color: Color(0xff42505C),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                Text(
                  date??"",
                  style: TextStyle(
                      color: Color(0xffA3A3A3),
                      fontSize: 13,
                      fontFamily: 'Montserrat'),
                  textAlign: TextAlign.end,
                ),
                SizedBox(height: height*0.01,),
                Text(
                  content??"",
                  style: TextStyle(
                      color: Color(0xff42505C),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                SizedBox(height: height*0.01,),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: _launchUrl,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('View Full Article' , style: TextStyle(
                          color: Color(0xff42505C),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 14),),
                      Icon(Icons.arrow_right , size: 28,color: Color(0xff42505C),)
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),

      ),

    );

  }

}


// ElevatedButton(style: ElevatedButton.styleFrom(
//   padding: EdgeInsets.all(0),
//   backgroundColor: Colors.transparent,
//   shadowColor: Colors.transparent,
//   foregroundColor: Colors.transparent,
//   surfaceTintColor: Colors.transparent,
//   elevation: 0,
// ),onPressed: _launchUrl, child: Row(
//   mainAxisAlignment: MainAxisAlignment.end,
//   children: [
//     Text('View Full Article' , style: TextStyle(
//         color: Color(0xff42505C),
//         fontFamily: 'Poppins',
//         fontWeight: FontWeight.w500,
//         fontSize: 14),),
//     Icon(Icons.arrow_right , size: 28,color: Color(0xff42505C),)
//   ],
// ),)




