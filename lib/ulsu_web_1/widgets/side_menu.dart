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
      color: mainWhiteColor,
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
        icon: Icons.cases_rounded,
        path: MainScreenRoute,
        text: MainScreenName,
        isActive: isActive(MainScreenRoute),
      ),
      CustomSideMenuItem(
        icon: Icons.school,
        path: ProjectsScreenRoute,
        text: ProjectsScreenName,
        isActive: isActive(ProjectsScreenRoute),
      ),
      CustomSideMenuItem(
        icon: Icons.people,
        path: TeamsScreenRoute,
        text: TeamsScreenName,
        isActive: isActive(TeamsScreenRoute),
      ),
      CustomSideMenuItem(
        icon: Icons.connect_without_contact,
        path: InterviewScreenRoute,
        text: InterviewScreenName,
        isActive: isActive(InterviewScreenRoute),
      ),
      CustomSideMenuItem(
        icon: Icons.badge,
        path: UsersScreenRoute,
        text: UsersScreenName,
        isActive: isActive(UsersScreenRoute),
      ),
      CustomSideMenuItem(
        icon: Icons.data_thresholding,
        path: DataScreenRoute,
        text: DataScreenName,
        isActive: isActive(DataScreenRoute),
      ),
    ];
    return list;
  }
}
