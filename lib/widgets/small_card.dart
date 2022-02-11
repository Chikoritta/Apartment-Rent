import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final IconData? icon;
  const SmallCard({this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 5.0,
      ),
      child: Stack(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xff053B3E).withOpacity(0.8),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
