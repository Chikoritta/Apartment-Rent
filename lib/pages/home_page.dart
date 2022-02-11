import 'package:apartment_rent/widgets/apartment_details.dart';
import 'package:apartment_rent/widgets/custome_button.dart';
import 'package:apartment_rent/widgets/custome_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const primaryColor = Color(0xffF28C37);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomeContainer(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
              child: Text(
                'Overview',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  ApartmentDetails(
                    icon: FontAwesomeIcons.bed,
                    boldText: '2 bedroom',
                    smallText: 'King size',
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  ApartmentDetails(
                    icon: FontAwesomeIcons.arrowsAlt,
                    boldText: '50 m²',
                    smallText: 'Building area',
                  ),
                ],
              ),
            ),
            //SizedBox(
            //   height: 20.0,
            // ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 20.0, right: 25.0, bottom: 19.0, top: 19.0),
              child: Text(
                "The Kailbata City Apartment is located in the midst of the hustle and bustle of Jakarta, and is labeled as one of the most popular residences",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                  color: Color(0xffAFAFB1),
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
            ),
            const CustomeButton(),
          ],
        ),
      ),
    );
  }
}
