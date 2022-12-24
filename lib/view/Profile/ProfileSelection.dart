import "package:flutter/material.dart";
import 'package:transport/view/Profile/ProfileSelectionBody.dart';

class ProfileSelection extends StatelessWidget {
  const ProfileSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileSelectionBody(),
    );
  }
}
