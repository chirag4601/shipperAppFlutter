import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liveasy/constants/spaces.dart';
import 'package:liveasy/controller/transporterIdController.dart';
import 'package:liveasy/widgets/accountNotVerifiedWidget.dart';
import 'package:liveasy/widgets/myLoadsWidget.dart';
import 'package:liveasy/widgets/promoWidgets/bonusWidget.dart';
import 'package:liveasy/widgets/headerWidgets/drawerWidget.dart';
import 'package:liveasy/constants/color.dart';
import 'package:liveasy/widgets/headerWidgets/helpButtonWidget.dart';
import 'package:liveasy/widgets/headerWidgets/liveasyTitleTextWidget.dart';
import 'package:liveasy/widgets/promoWidgets/referAndEarnWidget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TransporterIdController transporterIdController = Get.put(TransporterIdController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: DrawerWidget(
          mobileNum: transporterIdController.mobileNum.value,
        ),
        backgroundColor: backgroundColor,
        body: Container(
          padding: EdgeInsets.all(space_4) ,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        icon: Icon(
                          Icons.list,
                          size: space_6,
                        ),
                      ),
                      SizedBox(
                        width: space_2,
                      ),
                      LiveasyTitleTextWidget(),
                    ],
                  ),
                  HelpButtonWidget()
                ],
              ),
              // Container(
              //     padding: EdgeInsets.symmetric(horizontal: space_4),
              //     child: ),
              SizedBox(height: space_3,),
              MyLoadsWidget(),
              transporterIdController.transporterApproved.value == false
                  ? Container(
                  margin: EdgeInsets.symmetric(vertical: space_3),
                  child: AccountNotVerifiedWidget())
                  : Container(),
              Container(
                height: 80,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReferAndEarnWidget(),
                    BonusWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
