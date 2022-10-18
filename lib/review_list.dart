import 'package:flutter/material.dart';
import 'review.dart';
class ReviewList extends StatelessWidget {

  String pathImage = "assets/img/a.jpeg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  ReviewList(this.pathImage, this.name, this.details, this.comment, {super.key});
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Review(pathImage, name, details, comment),
      ],
    );
  }

}