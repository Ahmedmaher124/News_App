import 'package:dio/dio.dart';
import 'package:news_app/models/articl_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticlModel>> getNews({required final String domain}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/everything?domains=$domain,thenextweb.com&apiKey=e6c5a17d81c2426b9b51ac85341fd1e4');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticlModel> articlesList = [];
      for (var article in articles) {
        ArticlModel articlModel = ArticlModel(
          title: article['title'],
          image: article['urlToImage'],
          subTitle: article['description'],
        );
        articlesList.add(articlModel);
      }
      print(articlesList);
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
