import 'package:flutter/material.dart';
import 'package:liveasy/constants/borderWidth.dart';
import 'package:liveasy/constants/color.dart';
import 'package:liveasy/constants/spaces.dart';
import 'package:liveasy/functions/myLoadsApi.dart';
import 'package:liveasy/widgets/bodyTextWidget.dart';
import 'package:liveasy/widgets/myLoadsDisplayCard.dart';
class MyLoadsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(space_2), color: darkBlueColor),
      child: Column(
        children: [
          Container(
            height: space_8,
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  width: borderWidth_10,
                  color: lightGreyishBlueColor,
                ),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: space_3), //28
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BodyTextWidget(
                      text: "Suggested Loads", color:greyishWhiteColor),
                  BodyTextWidget(text: "See All", color: liveasyGreenColor),
                ],
              ),
            ),
          ),
          Container(
            child: FutureBuilder(
              future: runMyLoadApi(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return Container(
                      padding: EdgeInsets.only(top: 30),
                      child: CircularProgressIndicator(
                        color: white,
                      ));
                }
                return Container(
                  height: 106,
                  width: 309,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length >= 10
                          ? 10
                          : snapshot.data.length,
                      itemBuilder: (context, index) =>
                          MyLoadDisplayCard(
                              loadingPointCity:
                              snapshot.data[index].loadingPointCity,
                              unloadingPointCity:
                              snapshot.data[index].unloadingPointCity,
                              onTap: () {})),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}