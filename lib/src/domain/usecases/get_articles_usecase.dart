import 'package:flutter_clean_architecture_test/src/core/params/article_request.dart';
import 'package:flutter_clean_architecture_test/src/core/resources/data_state.dart';
import 'package:flutter_clean_architecture_test/src/core/usecase/usecase.dart';
import 'package:flutter_clean_architecture_test/src/domain/entities/article.dart';
import 'package:flutter_clean_architecture_test/src/domain/repositories/articles_repository.dart';

class GetArticlesUseCase
    implements UseCase<DataState<List<Article>>, ArticleRequestParams> {
  final ArticlesRepository _articleRepository;

  GetArticlesUseCase(this._articleRepository);

  @override
  Future<DataState<List<Article>>> call(
      {required ArticleRequestParams params}) {
    return _articleRepository.getBreakingNewsArticle(params);
  }
}
