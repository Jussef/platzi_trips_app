import 'package:flutter/material.dart';
import 'profile/profile_card_image.dart';
import 'profile/profile_card_image_list.dart';
import 'profile/profile_basic_info.dart';
import 'profile/profile_gradient_back.dart';
import 'profile/profile_interact_buttons.dart';
import 'profile/profile_card_image_description.dart';

String imageTitle = 'Knuckles Mountains Range';
String imageActivities =
    'Hiking, Water fall hunting, Natural bath, Scenery & Photography';
String steps = '123,123,123';
String pathImage = 'assets/img/beach.jpeg';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileGradientBack(),
        Container(
          margin: const EdgeInsets.only(top: 50, left: 30),
          child: const Text(
            "Profile",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 101, left: 30),
            child: ProfileBasicInfo("Daniel Jussef","jussefwebstudio@gmail.com","https://avatars.githubusercontent.com/u/47371363?s=400&u=55f385e8a25424c9680282a75d40a57ddd7ab55e&v=4")),
        Container(
          margin: const EdgeInsets.only(
            top: 221,
          ),
          child: ProfileInteractButtons(),
        ),
        Container(
          margin: const EdgeInsets.only(top: 180),
          child: Container(
            margin: const EdgeInsets.only(top: 125),
            child: ProfileCardImageList(),
          ),
        )
      ],
    );
  }
}
