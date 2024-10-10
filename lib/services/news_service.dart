import 'package:dio/dio.dart';
import 'package:news_app/models/articl_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  getNews() async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=e6c5a17d81c2426b9b51ac85341fd1e4');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];

    List<ArticlModel> articlmodel = [];
    for (var article in articles) {
      ArticlModel articlModel = ArticlModel(
        title: article['title'],
        image: article['urlToImage'],
        subTitle: article['description'],
      );
    }
    print(jsonData);
  }
}
