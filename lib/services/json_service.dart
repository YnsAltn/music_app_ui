import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;
import '../models/trending_item.dart';

class JsonService {
  Future<List<TrendingItem>> getTrendingItems() async {
    final String response = await rootBundle.rootBundle.loadString('assets/data/trending_items.json');
    final List<dynamic> data = json.decode(response);

    return data.map((item) => TrendingItem.fromJson(item)).toList();
  }
}
