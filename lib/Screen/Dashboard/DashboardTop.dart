import 'package:Design2/components/CustomShapeClipper.dart';
import 'package:flutter/material.dart';

Color firstColors = Color(0xFFF47D15);
Color secondColors = Color(0xFFF47D15);

class DashboardTop extends StatelessWidget {
  final height;
  const DashboardTop({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: height * .07,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/images/Chris-Pratt.jpg'),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Crist Pratt",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Blok XII-24",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        )
      ],
    );
  }
}
