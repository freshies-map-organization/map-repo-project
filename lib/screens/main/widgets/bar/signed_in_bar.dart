import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './bar.dart';
import '../../main_viewmodel.dart';

class SignedInBar extends Bar {
  final MainViewmodel _viewmodel;
  const SignedInBar(MainViewmodel viewmodel) : _viewmodel = viewmodel;

  @override
  Widget build(BuildContext context) {
    return Bar(
      button: IconButton(
          icon: Icon(
            FontAwesomeIcons.lockOpen,
          ),
          onPressed: () => _onPressLogoutButton()),
    );
  }

  void _onPressLogoutButton() => _viewmodel.user = null;
}
