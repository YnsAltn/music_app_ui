import 'package:flutter/material.dart';
import 'header_component.dart';
import 'description_component.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeaderComponent(),
          DescriptionComponent(),
        ],
      ),
    );
  }
}
