import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/post_model.dart';
import '../repositories/dummy_data.dart';
import '../views/screens/all_posts.dart';
import '../views/screens/favourite_screen.dart';

class MainSocialAppScreen extends StatefulWidget {
  @override
  State<MainSocialAppScreen> createState() => _MainSocialAppScreenState();
}

class _MainSocialAppScreenState extends State<MainSocialAppScreen> {
  PageController pageController = PageController();

  int currentIndex = 0;

  checkFavorite(PostModel postModel){
   int index = posts.indexOf(postModel);
   posts[index].isFavourite =! posts[index].isFavourite;
   setState(() {

   });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Social Media App')),
      body: PageView(
          controller: pageController,
          children: [AllPostsScreen(checkFavorite ), LikedPostsScreen(checkFavorite)]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
            pageController.animateToPage(index,
                duration: Duration(microseconds: 100), curve: Curves.linear);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favourite'),
          ]),
    );
  }
}