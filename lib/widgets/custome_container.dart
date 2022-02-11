import 'package:apartment_rent/pages/home_page.dart';
import 'package:apartment_rent/widgets/custome_button.dart';
import 'package:apartment_rent/widgets/small_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomeContainer extends StatelessWidget {
  const CustomeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: 20.0, top: 15.0, right: 20.0, bottom: 10.0),
      //  color: Colors.orange,
      height: MediaQuery.of(context).size.height * 0.56,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: const [
          BoxShadow(
              color: Colors.black38,
              offset: Offset(0, 10),
              blurRadius: 5.0,
              spreadRadius: 0)
        ],
        image: DecorationImage(
          image: const AssetImage('assets/houses.jpeg'),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.25), BlendMode.srcOver),
        ),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: ClipOval(
                  child: Material(
                    color: Colors.white, // Button color
                    child: InkWell(
                      splashColor: primaryColor, // Splash color
                      onTap: () {},
                      child: const SizedBox(
                          width: 35,
                          height: 35,
                          child: Icon(
                            Icons.arrow_back,
                            color: primaryColor,
                          )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
                child: Text(
                  'Apartment \nKalibata City',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0.2, 0.2),
                        blurRadius: 3.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      '\$150',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Text(
                    '/month',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 20.0, right: 10.0),
                child: ClipOval(
                  child: Material(
                    color: Colors.white, // Button color
                    child: InkWell(
                      splashColor: primaryColor, // Splash color
                      onTap: () {},
                      child: const SizedBox(
                        width: 35,
                        height: 35,
                        child: Icon(
                          Icons.save_alt_rounded,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const SmallCard(
                icon: Icons.image,
              ),
              const SmallCard(
                icon: Icons.flip,
              ),
              const SmallCard(
                icon: FontAwesomeIcons.map,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
