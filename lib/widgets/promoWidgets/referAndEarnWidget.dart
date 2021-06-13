import 'package:flutter/material.dart';
import 'package:liveasy/constants/color.dart';
import 'package:liveasy/constants/fontSize.dart';
import 'package:liveasy/constants/fontWeights.dart';
import 'package:liveasy/constants/spaces.dart';

class ReferAndEarnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 150,
      padding: EdgeInsets.fromLTRB(space_2-2, space_2-2, 0, 0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/referAndEarnBackgroundImage.png"),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Refer And earn",
            style: TextStyle(
                fontSize: size_8, fontWeight: mediumBoldWeight, color: greyishWhiteColor),
          ),
          Row(
            children: [
              Text(
                "Refer Liveasy to earn\npremium account",
                style: TextStyle(
                    fontSize: size_5, color: white, fontWeight: regularWeight, fontFamily: "roboto"),
              ),
              Container(
                height: space_8+2,
                width: space_7,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/icons/referAndEarnIcon.png"),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}