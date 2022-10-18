import 'package:flutter/material.dart';

class ProfileBasicInfo extends StatelessWidget {
  String nameUser = 'Daniel Jussef';
  String emailUser = 'jussefwebstudio@gmail.com';
  String urlImage = 'https://avatars.githubusercontent.com/u/47371363?s=400&u=55f385e8a25424c9680282a75d40a57ddd7ab55e&v=4';

  ProfileBasicInfo(this.nameUser, this.emailUser, this.urlImage, {super.key});
  @override
  Widget build(BuildContext context) {

    final columnOfNameAndEmail = Container(
      margin: const EdgeInsets.only(
        top: 25,
        left: 10
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            nameUser,
            style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white
            ),
          ),
          Text(
            emailUser,
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 16,
              fontWeight: FontWeight.w200,
              color: Colors.white60,
            ),
          ),
        ],
      ),
    );

    final imageContainer = Container(
      alignment: AlignmentDirectional.topStart,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(3),
        child: CircleAvatar(
          radius: 50,
          foregroundColor: Colors.white,
          backgroundImage: NetworkImage(urlImage),
        ),
      )
    );
    return Row(
      children: <Widget>[
        imageContainer,
        columnOfNameAndEmail,
      ],
    );
  }

}