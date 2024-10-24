import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articl_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewlistViewBulider extends StatefulWidget {
  const NewlistViewBulider({super.key, required this.domain});
  final String domain;
  @override
  State<NewlistViewBulider> createState() => _NewlistViewBuliderState();
}

class _NewlistViewBuliderState extends State<NewlistViewBulider> {
  List<ArticlModel> articles = [];
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(domain: 'techcrunch.com');
  }

  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: const Text("No Data"),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
    //   return isLoading
    //       ? SliverToBoxAdapter(
    //           child: const Center(child: CircularProgressIndicator()))
    //       : articles.isEmpty
    //           ? SliverToBoxAdapter(child: const Text("No Data"))
    //           : NewsListView(
    //               articles: articles,
    //             );
    // }
  }
}
