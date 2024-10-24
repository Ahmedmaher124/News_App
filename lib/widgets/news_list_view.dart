import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articl_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  NewsListView({
    required this.articles,
    super.key,
  });

  List<ArticlModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22.0),
        child: NewsTile(
          articleModel: articles[index],
        ),
      );
    }));
  }
}
