class TrendingItem {
  final String title;
  final String author;
  final String imageUrl;

  TrendingItem({required this.title, required this.author, required this.imageUrl});

  factory TrendingItem.fromJson(Map<String, dynamic> json) {
    return TrendingItem(
      title: json['title'],
      author: json['author'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'imageUrl': imageUrl,
    };
  }
}
class PodcastItem {
  final String title;
  final String author;
  final String imageUrl;

  PodcastItem({
    required this.title,
    required this.author,
    required this.imageUrl,
  });
}
