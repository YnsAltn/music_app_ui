import 'package:flutter/material.dart';
import 'package:piton_task/pages/page3/playback_slider_component.dart';
import 'package:piton_task/pages/page3/player_controls_component.dart';
import '../../models/trending_item.dart';

class Page3 extends StatelessWidget {
  final TrendingItem trendingItem;

  Page3({required this.trendingItem});

  @override
  Widget build(BuildContext context) {
    double currentTime = 125.5;
    double totalTime = 300.0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Now Playing',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(trendingItem.imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(height: 16),

              // Eserin ismi (ortalanmış)
              Text(
                trendingItem.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 8),

              Text(
                trendingItem.author,
                style: TextStyle(color: Colors.grey[400]),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 16),

              PlaybackSliderComponent(
                currentTime: currentTime,
                totalTime: totalTime,
                onChanged: (value) {
                },
              ),

              SizedBox(height: 16),

              PlayerControlsComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
