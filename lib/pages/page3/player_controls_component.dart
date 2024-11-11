import 'package:flutter/material.dart';

class PlayerControlsComponent extends StatefulWidget {
  @override
  _PlayerControlsComponentState createState() =>
      _PlayerControlsComponentState();
}

class _PlayerControlsComponentState extends State<PlayerControlsComponent> {
  bool isPlaying = false;

  void togglePlayPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 16),
            IconButton(
              icon: Icon(
                Icons.skip_previous,
                size: 36,
                color: Colors.white,
              ),
              onPressed: () {
              },
            ),
            SizedBox(width: 16),
            IconButton(
              icon: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
                size: 36,
                color: Colors.white,
              ),
              onPressed: togglePlayPause,
            ),
            SizedBox(width: 16),
            IconButton(
              icon: Icon(
                Icons.skip_next,
                size: 36,
                color: Colors.white,
              ),
              onPressed: () {
              },
            ),
          ],
        ),
      ],
    );
  }
}
