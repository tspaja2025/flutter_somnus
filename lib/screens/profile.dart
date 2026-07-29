import 'package:flutter/material.dart';
import 'package:flutter_somnus/shared/app_scaffold.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      currentIndex: 3,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [const Text('Profile Screen')],
        ),
      ),
    );
  }
}
