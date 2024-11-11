import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(80),
        topRight: Radius.circular(80),
        bottomLeft: Radius.circular(0),
        bottomRight: Radius.circular(0),
      ),
      child: Container(
        width: 200,
        height: 300,
        child: Image.asset(
          'assets/images/user.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
