import 'package:flutter/material.dart';
import '../profile_screen.dart';

class Body extends StatelessWidget {
  const Body({state}) : _state = state;

  final ProfileScreen _state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
              child: Container(
                height: 120.0,
                width: 120.0,
                child: Image.asset('assets/images/unknown_user.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 10.0),
              child: Column(
                children: [
                  Text('Username'),
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
                  Text('Name:'),
                  SizedBox(height: 30),
                  Text('Age:'),
                  SizedBox(height: 30),
                  Text('Occupation:')
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
            ElevatedButton(
              child: Text('My Recipe'),
              onPressed: () {},
            )
          ],
        )
      ],
    );
  }
}
