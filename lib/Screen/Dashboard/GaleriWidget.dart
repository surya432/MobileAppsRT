import 'package:flutter/material.dart';

class GaleriKegiatanWidget extends StatelessWidget {
  const GaleriKegiatanWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 1.4,
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(
                                5.0) //         <--- border radius here
                            ),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/sydney.jpeg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Text(""),
                    ),
                    Positioned(
                      child: Text(
                        "Adipisicing cupidatat adipisicing sunt est ipsum excepteur aliqua laboris cupidatat mollit consequat. Veniam non voluptate magna dolor dolor incididunt. Laboris excepteur id commodo consequat nostrud in dolor. Tempor irure qui aliqua eu cupidatat."
                            .substring(0, 60),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      bottom: 12,
                      left: 16,
                      right: 16,
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 1.4,
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(
                                5.0) //         <--- border radius here
                            ),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/sydney.jpeg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Text(""),
                    ),
                    Positioned(
                      child: Text(
                        "Adipisicing cupidatat adipisicing sunt est ipsum excepteur aliqua laboris cupidatat mollit consequat. Veniam non voluptate magna dolor dolor incididunt. Laboris excepteur id commodo consequat nostrud in dolor. Tempor irure qui aliqua eu cupidatat."
                            .substring(0, 60),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      bottom: 12,
                      left: 16,
                      right: 16,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
