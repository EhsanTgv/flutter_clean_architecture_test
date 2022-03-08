
import 'package:flutter_clean_architecture_test/src/domain/entities/article.dart';

import 'source_model.dart';

class ArticleModel extends Article{
  ArticleModel({
    int? id,
    required SourceModel source,
    required String author,
    required String title,
    required String description,
    required String url,
    required String urlToImage,
    required String publishedAt,
    required String content,
  }) : super(
    id: id!,
    source: source,
    author: author,
    title: title,
    description: description,
    url: url,
    urlToImage: urlToImage,
    publishedAt: publishedAt,
    content: content);

    factory ArticleModel.fromJson(Map<String, dynamic> map){
      return ArticleModel(
        source: SourceModel.fromJson(map['source'] as Map<String,dynamic>),
        author: map['author'] as String,
        title: map['title'] as String,
        description: map['description'] as String,
        url: map['url'] as String,
        urlToImage: map['urlToImage'] as String,
        publishedAt: map['publishedAt'] as String,
        content: map['content'] as String);
    }
}