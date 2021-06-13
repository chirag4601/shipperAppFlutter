import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:liveasy/constants/color.dart';
import 'package:liveasy/controller/transporterIdController.dart';
import 'package:liveasy/providerClass/providerData.dart';
import 'package:liveasy/screens/homeScreen.dart';
import 'package:liveasy/widgets/navigationWidgets/bottomNavigationIconWidget.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

class NavigationScreen extends StatefulWidget {
  final bool? isAccountVerificationInProgress;

  NavigationScreen({this.isAccountVerificationInProgress});

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  // TransporterIdController transporterIdController =
  // Get.find<TransporterIdController>();
  bool isAccountVerificationInProgress = false;
  var screens;

  @override
  Widget build(BuildContext context) {
    screens = [
      HomeScreen(),
      Text(""),
      Text(""),
      Text(""),
    ];
    return Scaffold(
      backgroundColor: statusBarColor,
      // color of status bar which displays time on a phone
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int pressedIndex) {
          Provider.of<ProviderData>(context, listen: false)
              .updateIndex(pressedIndex);
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedItemColor: grey,
        selectedItemColor: grey,
        selectedLabelStyle: TextStyle(color: flagGreen),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: BottomNavigationIconWidget(
              iconPath: "homeIcon.png",
            ),
            activeIcon: BottomNavigationIconWidget(
              iconPath: "activeHomeIcon.png",
            ),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: BottomNavigationIconWidget(
              iconPath: "postLoadIcon.png",
            ),
            activeIcon: BottomNavigationIconWidget(
              iconPath: "activePostLoadIcon.png",
            ),
            label: ("Post Load"),
          ),
          BottomNavigationBarItem(
            icon: BottomNavigationIconWidget(
              iconPath: "ordersIcon.png",
            ),
            activeIcon: BottomNavigationIconWidget(
              iconPath: "activeOrdersIcon.png",
            ),
            label: ("Orders"),
          ),
          BottomNavigationBarItem(
            icon: BottomNavigationIconWidget(
              iconPath: "accountIcon.png",
            ),
            activeIcon: BottomNavigationIconWidget(
              iconPath: "activeAccountIcon.png",
            ),
            label: ("Account"),
          ),
        ],
        currentIndex: Provider.of<ProviderData>(context).index,
      ),
      body: SafeArea(
        child: Center(
            child: screens.elementAt(Provider.of<ProviderData>(context).index)),
      ),
    );
  }
}
