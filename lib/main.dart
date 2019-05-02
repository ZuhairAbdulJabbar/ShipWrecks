import 'package:flutter/material.dart';
import 'package:shipwrecks/screens/onboarding.dart';
import 'package:shipwrecks/screens/zones_list.dart';
import 'package:shipwrecks/util/utilities.dart';
main() async {
  bool _seen = await checkSeenStatus();
  Widget home = OnBoarding();
  if (_seen) {
    home = ZonesList();
  }
  updateSeenStatus();
  runApp(Shipwrecks(home));
}

class Shipwrecks extends StatelessWidget {
  final Widget _home;
  Shipwrecks(this._home);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShipWrecks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.teal),
      home: this._home,
    );
  }
}

