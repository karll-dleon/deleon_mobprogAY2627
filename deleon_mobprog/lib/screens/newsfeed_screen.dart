import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Karl De Leon',
          postContent: 'maybe we get married one day...',
          numOfLikes: 150,
          numOfComments: 20,
          date: 'November 17',
          hasImage: false,
          avatarPath: 'assets/images/mee.png',
        ),
        NewsFeedCard(
          userName: 'Karl De Leon',
          postContent: 'cubao maxxing',
          numOfLikes: 275,
          numOfComments: 50,
          date: 'November 21',
          hasImage: true,
          imagePath: 'assets/images/cubaow.png',
          avatarPath: 'assets/images/mee.png',
        ),
      ],
    );
  }
}
