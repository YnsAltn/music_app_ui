import 'package:flutter/material.dart';

class PlaybackSliderComponent extends StatelessWidget {
  final double currentTime;
  final double totalTime;
  final Function(double) onChanged;

  PlaybackSliderComponent({
    required this.currentTime,
    required this.totalTime,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: currentTime,
          min: 0,
          max: totalTime,
          onChanged: onChanged,
          activeColor: Colors.blue,
          inactiveColor: Colors.grey,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${(currentTime / 60).floor().toString().padLeft(2, '0')}:${(currentTime % 60).toString().padLeft(2, '0')}',
              style: TextStyle(color: Colors.white),
            ),

            Text(
              '${(totalTime / 60).floor().toString().padLeft(2, '0')}:${(totalTime % 60).toString().padLeft(2, '0')}',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
