import 'package:flutter/material.dart';
import 'widgets/bar.dart';
import 'widgets/body.dart';

class ProfileScreen extends StatefulWidget {
  static Route route() =>
      MaterialPageRoute(builder: (context) => ProfileScreen());

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(),
          body: Body(),
        ),
      ),
    );
  }
}
