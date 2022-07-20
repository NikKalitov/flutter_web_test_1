import 'package:flutter/material.dart';
import 'side_menu_item.dart';
import '../routes.dart';
import '../constants/sizes.dart';
import '../constants/style.dart';

class CustomSideMenu extends StatelessWidget {
  const CustomSideMenu({Key? key, required this.path}) : super(key: key);

  final String path;

  bool isActive(String path) {
    return path == this.path;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: greyMain,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: SizedBox(
          height: listOfSideMenuItems().length * sideMenuItemHeight +
              appBarHeight.toDouble(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: listOfSideMenuItems(),
          ),
        ),
      ),
    );
  }

  List<CustomSideMenuItem> listOfSideMenuItems() {
    List<CustomSideMenuItem> list = [
      CustomSideMenuItem(
        icon: Icons.fitbit,
        path: MainScreenRoute,
        text: MainScreenName,
        isActive: isActive(MainScreenRoute),
      ),
      CustomSideMenuItem(
        icon: Icons.layers,
        path: StackScreenRoute,
        text: StackScreenName,
        isActive: isActive(StackScreenRoute),
      ),
      CustomSideMenuItem(
        icon: Icons.settings,
        path: ServicesScreenRoute,
        text: ServiceScreenName,
        isActive: isActive(ServicesScreenRoute),
      ),
      CustomSideMenuItem(
        icon: Icons.school_sharp,
        path: SchoolScreenRoute,
        text: SchoolScreenName,
        isActive: isActive(SchoolScreenRoute),
      ),
      CustomSideMenuItem(
        icon: Icons.handshake,
        path: PartnershipScreenRoute,
        text: PartnershipScreenName,
        isActive: isActive(PartnershipScreenRoute),
      ),
      CustomSideMenuItem(
        icon: Icons.rocket,
        path: CareerScreenRoute,
        text: CareerScreenName,
        isActive: isActive(CareerScreenRoute),
      ),
      CustomSideMenuItem(
        icon: Icons.contacts,
        path: ContactsScreenRoute,
        text: ContactsScreenName,
        isActive: isActive(ContactsScreenRoute),
      ),
    ];
    return list;
  }
}
