import 'package:apartment_rent/pages/home_page.dart';
import 'package:flutter/material.dart';

class ApartmentDetails extends StatelessWidget {
  final IconData? icon;
  final String boldText;
  final String smallText;
  const ApartmentDetails(
      {this.icon, required this.boldText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 30.0,
          height: 30.0,
          decoration: BoxDecoration(
              color: Color(0xffEEEDEF),
              borderRadius: BorderRadius.circular(5.0)),
          child: Icon(
            icon,
            color: primaryColor,
            size: 20.0,
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              boldText,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22.0),
            ),
            Text(
              smallText,
              style: TextStyle(
                  color: Colors.grey.shade400, fontWeight: FontWeight.w500),
            ),
          ],
        )
      ],
    );
  }
}
