import 'package:flutter/material.dart';

const Color blueColor = const Color(0xFFF47D15);
const Color iconBackgroundColor = const Color(0xFF647082);
final BorderRadius optionBorderRadius = BorderRadius.circular(8);

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  final Function onTap;

  const BottomNavItem(
      {Key key, this.icon, this.title, this.isSelected, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isSelected ? blueColor : Colors.white,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              color: isSelected ? Colors.white : iconBackgroundColor,
            ),
            if (isSelected)
              VerticalDivider(
                color: iconBackgroundColor,
              ),
            if (isSelected)
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
