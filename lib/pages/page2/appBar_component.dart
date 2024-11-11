import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0x1AAAAAFF),
      title: Text(
        'Podkes',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
          },
        ),
      ],
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
        },
      ),
    );
  }
}
