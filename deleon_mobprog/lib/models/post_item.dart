class PostItem {
  const PostItem({
    required this.id,
    required this.author,
    required this.dateLabel,
    required this.content,
    required this.likesCount,
    required this.commentsCount,
    required this.sharesCount,
    required this.hasPlaceholder,
    this.imagePath,
    this.placeholderLabel = 'PBB Collab 3.0 Media Placeholder',
  });

  final int id;
  final String author;
  final String dateLabel;
  final String content;
  final int likesCount;
  final int commentsCount;
  final int sharesCount;
  final bool hasPlaceholder;
  final String? imagePath;
  final String placeholderLabel;
}

const List<PostItem> kSamplePosts = [
  PostItem(
    id: 1,
    author: 'Kuya (Big Brother)',
    dateLabel: 'Nov 26, 2026',
    content:
        'Day 34 inside the new house at ELJ Communications Center—stay focused on your tasks and respect one another.',
    likesCount: 4820,
    commentsCount: 390,
    sharesCount: 215,
    hasPlaceholder: false,
  ),
  PostItem(
    id: 2,
    author: 'Allen',
    dateLabel: 'Nov 26, 2026',
    content:
        'Grabe ang birthday surprise at party para sa akin! Maraming salamat sa lahat ng bumati at nagpadala ng mensahe.',
    likesCount: 3190,
    commentsCount: 274,
    sharesCount: 98,
    hasPlaceholder: false,
    imagePath: 'assets/images/allen_birthday.jpg',
    placeholderLabel: 'Allen Birthday Celebration Photo Placeholder',
  ),
  PostItem(
    id: 3,
    author: 'Lexi Gonzales',
    dateLabel: 'Nov 23, 2026',
    content:
        'Bagong pasok sa Bahay ni Kuya! Exciting na makilala ang lahat ng Kapamilya at Kapuso housemates.',
    likesCount: 2740,
    commentsCount: 210,
    sharesCount: 132,
    hasPlaceholder: false,
    imagePath: 'assets/images/lexi_house_entry.jpg',
    placeholderLabel: 'Lexi Gonzales House Entry Placeholder',
  ),
  PostItem(
    id: 4,
    author: 'Eugene Reggio',
    dateLabel: 'Nov 25, 2026',
    content:
        'Fun swapping Korean phrases with Gehlee while preparing for our weekly challenges.',
    likesCount: 1950,
    commentsCount: 145,
    sharesCount: 64,
    hasPlaceholder: false,
  ),
  PostItem(
    id: 5,
    author: 'Gehlee Dangca',
    dateLabel: 'Nov 25, 2026',
    content:
        'Pinoy Street Swag makeover time! Ang kulit ng rampa ng lahat para sa fourth weekly task.',
    likesCount: 3610,
    commentsCount: 302,
    sharesCount: 188,
    hasPlaceholder: false,
    imagePath: 'assets/images/gehlee_street_swag.jpg',
    placeholderLabel: 'Pinoy Street Swag Task Placeholder',
  ),
  PostItem(
    id: 6,
    author: 'Jeo',
    dateLabel: 'Nov 26, 2026',
    content:
        'Binuhos ang effort sa paggawa ng birthday cake para kay Allen—sana nagustuhan mo bro!',
    likesCount: 1840,
    commentsCount: 119,
    sharesCount: 52,
    hasPlaceholder: false,
  ),
  PostItem(
    id: 7,
    author: 'Race Matias',
    dateLabel: 'Nov 23, 2026',
    content:
        'New chapter unlocked inside the Big Brother house. Ready to give my best in every task.',
    likesCount: 2230,
    commentsCount: 164,
    sharesCount: 77,
    hasPlaceholder: false,
    imagePath: 'assets/images/race_matias_intro.jpg',
    placeholderLabel: 'Race Matias Intro Card Placeholder',
  ),
  PostItem(
    id: 8,
    author: 'Victoria Vargas',
    dateLabel: 'Nov 24, 2026',
    content:
        'Adjusting to house life and getting to know everyone’s routines and styles.',
    likesCount: 1690,
    commentsCount: 96,
    sharesCount: 41,
    hasPlaceholder: false,
  ),
  PostItem(
    id: 9,
    author: 'Raheel',
    dateLabel: 'Nov 24, 2026',
    content:
        'Heart-to-heart talk with Kuya reminded me why I joined this journey. Laban lang!',
    likesCount: 2480,
    commentsCount: 183,
    sharesCount: 89,
    hasPlaceholder: false,
  ),
  PostItem(
    id: 10,
    author: 'PBB Collab 3.0 Updates',
    dateLabel: 'Nov 22, 2026',
    content:
        'Catch daily episodes and iWant PBB Extra as five new housemates bring the house roster to 20.',
    likesCount: 5410,
    commentsCount: 428,
    sharesCount: 310,
    hasPlaceholder: false,
    imagePath: 'assets/images/pbb_collab_update_banner.jpg',
    placeholderLabel: 'PBB Collab 3.0 Official Update Banner Placeholder',
  ),
];
