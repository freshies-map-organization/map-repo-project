import 'package:exercise3/screens/profile/profile_viewmodel.dart';
import 'package:exercise3/screens/view.dart';
import 'package:flutter/material.dart';
import '../profile_screen.dart';

class Body extends StatelessWidget {
  final ProfileViewModel _profileViewModel;
  Body({drawerKey, profileViewModel})
      : mainDrawerKey = drawerKey,
        _profileViewModel = profileViewModel;

  // final ProfileScreen _state;
  final GlobalKey<ScaffoldState> mainDrawerKey;

  @override
  Widget build(BuildContext context) {
    return View(
      viewmodel: ProfileViewModel(),
      builder: (context, viewmodel, _) => Column(
        children: [
          Container(
            height: 50,
            child: Stack(
              fit: StackFit.expand,
              children: [
                //menu btn
                Positioned(
                  left: 7,
                  top: 0,
                  bottom: 0,
                  child: InkWell(
                    onTap: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      mainDrawerKey.currentState.openDrawer();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        "assets/icons/ic_menu.png",
                        scale: 3.2,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ),
                ),
                //Center Widget
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'bold',
                        color: Theme.of(context).textTheme.caption.color,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
                child: Container(
                  height: 120.0,
                  width: 120.0,
                  child: Image.asset('assets/images/smith_img.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 10.0),
                child: Column(
                  children: [
                    Text(
                      'Username: ${viewmodel.user.login}',
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 30),
                    Text('Password:'),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 10.0),
                child: Column(
                  children: [
                    Text(
                      'Name: ${viewmodel.user.name}',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Age:${viewmodel.user.age}',
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Occupation:${viewmodel.user.occupation}',
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Edit Profile'),
                onPressed: () {},
              ),
              SizedBox(width: 10.0),
            ],
          )
        ],
      ),
    );
  }
}
