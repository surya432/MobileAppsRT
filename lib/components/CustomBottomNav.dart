import 'package:Design2/components/ButtomNavItem.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({Key key, this.onPressedFunction, this.indexPage = 0})
      : super(key: key);
  final Function onPressedFunction;
  final indexPage;

  @override
  _CustomBottomNavState createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int selectedIndex = 0;

  void onItemTapped(int tappedItemIndex) {
    widget.onPressedFunction(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: ClayContainer(
          height: 60,
          borderRadius: 10,
          color: Colors.white,
          spread: 10,
          depth: 40,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BottomNavItem(
                  icon: Icons.home,
                  title: 'Home',
                  isSelected: widget.indexPage == 0,
                  onTap: () {
                    widget.onPressedFunction(0);
                  },
                ),
                BottomNavItem(
                  icon: Icons.person,
                  title: 'AKUN',
                  isSelected: widget.indexPage == 1,
                  onTap: () {
                    widget.onPressedFunction(1);
                  },
                ),
                // BottomNavItem(
                //   icon: Icons.mail_sharp,
                //   title: 'SMS',
                //   isSelected: widget.indexPage == 2,
                //   onTap: () {
                //     widget.onPressedFunction(2);
                //   },
                // ),
                // BottomNavItem(
                //   icon: Icons.bookmark,
                //   title: 'Report',
                //   isSelected: widget.indexPage == 3,
                //   onTap: () {
                //     widget.onPressedFunction(3);
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
