import 'package:flutter_clean_architecture_test/src/core/params/article_request.dart';
import 'package:flutter_clean_architecture_test/src/core/resources/data_state.dart';
import 'package:flutter_clean_architecture_test/src/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<Article>>> getBreakingNewsArticle(
    ArticleRequestParams params,
  );
}
