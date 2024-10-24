import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articl_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/Categories_list_view.dart';
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/news_list_view_bulider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(child: CategoriesListView()),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          NewlistViewBulider(
            domain: 'techcrunch.com',
          ),
        ]),
        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 16,
        //     ),
        //     Expanded(child: NewsListView())
        //   ],
        // ),
      ),
    );
  }
}
