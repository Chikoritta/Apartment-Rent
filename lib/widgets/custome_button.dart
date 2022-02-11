import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Ink(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xffF9973F), Color(0xffF05A04)]),
              borderRadius: BorderRadius.circular(20)),
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 70,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Rent now',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xffFBF1D7),
                  ),
                ),
                // SizedBox(
                //   width: 50,
                // ),
                // Icon(
                //   FontAwesomeIcons.arrowRight,
                //   size: 24.0,
                //   color: Color(0xffFBF1D7),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
