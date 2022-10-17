import 'package:flutter/material.dart';

import '../../repositories/dummy_data.dart';
import '../widgets/post_widget.dart';

class AllPostsScreen extends StatelessWidget {
  @override
  Function function;
  AllPostsScreen(this.function);
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostWidget(posts[index], function);
        });
  }
}