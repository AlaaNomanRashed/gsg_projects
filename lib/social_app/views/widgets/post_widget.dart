import 'package:flutter/material.dart';

import '../../models/post_model.dart';

class PostWidget extends StatelessWidget {
  PostModel postModel;
  Function function;
  PostWidget(this.postModel , this.function);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(postModel.postUserModel!.image!),
                radius: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(postModel.postUserModel!.name!),
                  Text('Since 23 minuites')
                ],
              )
            ],
          ),
        ),
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(postModel.image!))),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [

              InkWell(
                onTap: () {
                  postModel.isFavourite = postModel.isFavourite;
                function(postModel);
                },
                child: Icon(
                  Icons.favorite,
                  size: 30,
                  color: postModel.isFavourite ? Colors.red : Colors.grey,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.share,
                size: 30,
              )
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(postModel.content ?? '')),
        const Divider()
      ],
    );
  }
}