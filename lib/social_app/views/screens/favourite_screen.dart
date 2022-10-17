import 'package:flutter/material.dart';

import '../../repositories/dummy_data.dart';
import '../widgets/post_widget.dart';

class LikedPostsScreen extends StatelessWidget {
  @override
  Function function;
  LikedPostsScreen(this.function);
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: posts.where((element) => element.isFavourite).length,
        itemBuilder: (context, index) {
          return PostWidget(
              posts.where((element) => element.isFavourite).toList()[index],
              function
          );
        });
  }
}