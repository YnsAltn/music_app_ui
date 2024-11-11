import 'package:flutter/material.dart';
import '../../models/trending_item.dart';

class NowPlayingInfoComponent extends StatelessWidget {
  final TrendingItem trendingItem;

  NowPlayingInfoComponent({required this.trendingItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Now Playing',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                trendingItem.author,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[400],
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 16),
            Flexible(
              child: Text(
                trendingItem.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
