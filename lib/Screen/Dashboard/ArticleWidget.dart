import 'package:flutter/material.dart';

class ArticleWidget extends StatefulWidget {
  ArticleWidget({Key key}) : super(key: key);

  @override
  _ArticleWidgetState createState() => _ArticleWidgetState();
}

class _ArticleWidgetState extends State<ArticleWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Artikel Terbaru",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Lihat Lainnya",
                  style: TextStyle(
                    color: Colors.amberAccent,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                Column(
                  children: List.generate(3, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 2),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                "assets/images/lasvegas.jpg",
                                height: height * .09,
                                width: width * .25,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              child: Text(
                                "Aliqua ea labore nisi dolor labore pariatur esse .Aliqua ea labore nisi dolor labore pariatur esse .Aliqua ea labore nisi dolor labore pariatur esse .Aliqua ea labore nisi dolor labore pariatur esse .Aliqua ea labore nisi dolor labore pariatur esse .Aliqua ea labore nisi dolor labore pariatur esse .Aliqua ea labore nisi dolor labore pariatur esse ."
                                    .substring(0, 90),
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
