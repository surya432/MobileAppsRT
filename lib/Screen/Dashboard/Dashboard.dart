import 'package:Design2/Screen/Dashboard/ArticleWidget.dart';
import 'package:Design2/Screen/Dashboard/BillingWidget.dart';
import 'package:Design2/Screen/Dashboard/DashboardTop.dart';
import 'package:Design2/Screen/Dashboard/GaleriWidget.dart';
import 'package:Design2/components/CustomShapeClipper.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: height * .3,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [firstColors, secondColors],
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Cluster River Side Krian",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DashboardTop(
                          height: height * 0.3,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        BillingWidget(),
                        SizedBox(
                          height: 8,
                        ),
                        GaleriKegiatanWidget(),
                        SizedBox(
                          height: 8,
                        ),
                        ArticleWidget(),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
