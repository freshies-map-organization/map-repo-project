import 'package:flutter/material.dart';

import 'widgets/bar/signed_in_bar.dart';
import 'widgets/bar/unsigned_in_bar.dart';
import 'widgets/body.dart';

import 'main_viewmodel.dart';

import '../view.dart';
import '../EZcookinitial.dart';

class MainScreen extends StatelessWidget {
  static Route route() => MaterialPageRoute(builder: (context) => MainScreen());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: View(
          viewmodel: MainViewmodel(),
          builder: (_, mainViewmodel, __) {
            if (mainViewmodel.isUserSignedIn) {
              final _mainViewmodel =
                  MainViewmodel(mainViewmodel: mainViewmodel);

              return Scaffold(
                appBar: SignedInBar(mainViewmodel),
                body: Body(_mainViewmodel),
              );
            }

            return Scaffold(
              appBar: UnsignedInBar(mainViewmodel),
              body: EZcook(),
            );
          },
        ),
      ),
    );
  }
}
