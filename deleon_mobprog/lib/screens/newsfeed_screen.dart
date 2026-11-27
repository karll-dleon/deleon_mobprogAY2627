import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/post_item.dart';
import '../widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key, this.posts = kSamplePosts});

  final List<PostItem> posts;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: APP_BACKGROUND,
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return NewsfeedCard(postItem: posts[index]);
        },
      ),
    );
  }
}
