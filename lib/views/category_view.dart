import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/news_list_view_bulider.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.domain});
  final String domain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        NewlistViewBulider(
          domain: domain,
        ),
      ]),
    );
  }
}
