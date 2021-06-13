import 'package:flutter/material.dart';
import 'package:liveasy/constants/color.dart';
import 'package:liveasy/constants/fontSize.dart';
import 'package:liveasy/constants/fontWeights.dart';
import 'package:liveasy/constants/spaces.dart';

class BonusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 150,
      padding: EdgeInsets.fromLTRB(space_2-2, space_2-2, 0, 0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bonusBackgroundImage.png"),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bonus",
                style: TextStyle(
                    fontSize: size_8,
                    fontWeight: mediumBoldWeight,
                    color: greyishWhiteColor),
              ),
              SizedBox(
                height: space_2-2,
              ),
              Text(
                "Keep booking\nusing Liveasy to\nearn more",
                style: TextStyle(fontSize: size_5, color: white, fontFamily: "roboto"),
              ),
            ],
          ),
          Container(
            height: space_10,
            width: space_10,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/bonusIcon.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
