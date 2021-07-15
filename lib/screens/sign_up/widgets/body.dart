import 'package:flutter/material.dart';

import '../../../models/user.dart';
import '../../view.dart';
import '../signup_viewmodel.dart';

class Body extends StatelessWidget {
  void _onSignUp(BuildContext context, SignUpViewmodel viewmodel) async {
    final User _user = await viewmodel.register();

    if (_user != null) Navigator.pop(context, _user);
  }

  void _onCancel(BuildContext context, SignUpViewmodel viewmodel) {
    viewmodel.showErrorMessage = false;
    Navigator.pop(context, null);
  }

  @override
  Widget build(BuildContext context) {
    return View(
      viewmodel: SignUpViewmodel(),
      builder: (context, viewmodel, _) => Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildButtons3(context, viewmodel),
          _buildTextField(
              hint: 'Name',
              icon: Icons.person,
              onChanged: (value) => viewmodel.name = value),
          _buildTextField(
              hint: 'Username',
              icon: Icons.people,
              onChanged: (value) => viewmodel.username = value),
          _buildTextField(
              hint: 'Password',
              isObsecure: !viewmodel.showPassword,
              icon: Icons.lock,
              button: IconButton(
                  icon: Icon(Icons.visibility),
                  onPressed: () =>
                      viewmodel.showPassword = !viewmodel.showPassword),
              onChanged: (value) => viewmodel.password = value),
          if (viewmodel.showErrorMessage)
            Text(
              'Invalid username or password!',
              style: TextStyle(color: Colors.red, fontSize: 20.0),
            ),
          SizedBox(height: 10.0),
          _buildButtons1(context, viewmodel),
          SizedBox(height: 10.0),
          _buildButtons2(context, viewmodel)
        ],
      ),
    );
  }

  TextField _buildTextField(
      {hint, icon, isObsecure = false, button, onChanged}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: icon != null ? Icon(icon) : null,
        suffixIcon: button,
      ),
      obscureText: isObsecure,
      onChanged: onChanged,
    );
  }

  Row _buildButtons1(BuildContext context, SignUpViewmodel viewmodel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Text('Sign Up'),
          onPressed: () => _onSignUp(context, viewmodel),
        ),
        SizedBox(width: 10.0),
        ElevatedButton(
          child: Text('Cancel'),
          onPressed: () => _onCancel(context, viewmodel),
        ),
      ],
    );
  }

  Row _buildButtons2(BuildContext context, SignUpViewmodel viewmodel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an Account?'),
        TextButton(
          child: Text('Login'),
          onPressed: () => _onPressLoginButton(context),
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  void _onPressLoginButton(context) async {
    Navigator.pop(context);
  }

  Row _buildButtons3(BuildContext context, SignUpViewmodel viewmodel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('assets/images/ezcook.png'),
          height: 100,
          width: 100,
        ),
      ],
    );
  }
}
