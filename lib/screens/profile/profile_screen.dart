import 'package:flutter/material.dart';

import '../main/main_viewmodel.dart';
import '../view.dart';

import 'profile_viewmodel.dart';

import 'widgets/bar.dart';
import 'widgets/body.dart';
import 'widgets/sideDrawer.dart';

class ProfileScreen extends StatefulWidget {
  static Route route() =>
      MaterialPageRoute(builder: (context) => ProfileScreen());

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> mainDrawerKey = GlobalKey();

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: View(
            viewmodel: MainViewmodel(),
            builder: (_, mainViewmodel, __) {
              final _profileViewmodel =
                  ProfileViewModel(mainViewmodel: mainViewmodel);
              return Scaffold(
                key: mainDrawerKey,
                drawer: SideDrawer(_profileViewmodel),
                body: Body(
                  drawerKey: mainDrawerKey,
                  profileViewModel: _profileViewmodel,
                ),
              );
            }),
      ),
    );
  }
}
