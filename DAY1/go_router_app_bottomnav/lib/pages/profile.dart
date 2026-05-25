import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatelessWidget {
  final String userid;
  final String username;

  const Profile({super.key, required this.userid, required this.username});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page\n$username ($userid)',
        textAlign: TextAlign.center,
      ),
    );
  }
}
