import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:liveasy/constants/borderWidth.dart';
import 'package:liveasy/constants/fontSize.dart';
import 'package:liveasy/constants/fontWeights.dart';
import 'package:liveasy/constants/spaces.dart';
import 'package:liveasy/constants/color.dart';
import 'package:liveasy/providerClass/providerData.dart';
import 'package:provider/provider.dart';

class AccountNotVerifiedWidget extends StatelessWidget {
  const AccountNotVerifiedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {Provider.of<ProviderData>(context,listen: false).updateIndex(4);},
      child: Container(
        height: space_8,
        padding:
        EdgeInsets.fromLTRB(space_3, space_1-3, space_3, 0),
        decoration: BoxDecoration(
          color: lightYellow,
          border: Border.all(
              color: darkYellow, width: borderWidth_10),
          borderRadius: BorderRadius.circular(space_1),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: space_5-2,
                  width: space_5-2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icons/errorIcon.png"),
                    ),
                  ),
                ),
                SizedBox(width: space_3,),
                Container(
                  padding: EdgeInsets.only(top: space_1+2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Account details pending!", style: TextStyle(fontSize: size_5, color: Color(0xFF212121), fontFamily: "roboto", fontWeight: mediumBoldWeight),),
                    Text("Get your account verified to proceed further", style: TextStyle(fontSize: size_4, color: darkGreyColor, fontFamily: "roboto"),)
                  ],),
                )
              ],
            ),
            Icon(Icons.arrow_forward_ios, color: darkGreyColor, size: space_2,)
          ],
        ),
      ),
    );
  }
}
