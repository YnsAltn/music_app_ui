import 'package:flutter/material.dart';
import 'package:piton_task/services/json_service.dart';
import 'package:piton_task/models/trending_item.dart';
import 'appBar_component.dart';
import 'categories_component.dart';
import 'searchBar_component.dart';
import 'trending_item_component.dart';
import '../../components/navigationBar/navigation_bar.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  late Future<List<TrendingItem>> trendingItems;

  @override
  void initState() {
    super.initState();
    trendingItems = JsonService().getTrendingItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarComponent(),
      ),
      body: FutureBuilder<List<TrendingItem>>(
        future: trendingItems,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No trending items found.'));
          }

          List<TrendingItem> items = snapshot.data!;

          return ListView(
            children: [
              SearchBarComponent(),
              CategoriesComponent(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
                child: Text(
                  'Trending',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: items.map((item) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/page3',
                          arguments: item,
                        );
                      },
                      child: TrendingItemComponent(
                        title: item.title,
                        author: item.author,
                        imageUrl: item.imageUrl,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
        },
      ),
    );
  }
}
