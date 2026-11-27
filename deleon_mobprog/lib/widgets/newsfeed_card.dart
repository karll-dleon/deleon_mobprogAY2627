import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../models/post_item.dart';
import 'custom_text.dart';

class NewsfeedCard extends StatefulWidget {
  const NewsfeedCard({super.key, required this.postItem});

  final PostItem postItem;

  @override
  State<NewsfeedCard> createState() => _NewsfeedCardState();
}

class _NewsfeedCardState extends State<NewsfeedCard> {
  late int _likes;
  bool _isLiked = false;

  @override
  void initState() {
    super.initState();
    _likes = widget.postItem.likesCount;
  }

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
      _likes += _isLiked ? 1 : -1;
    });
  }

  Widget _buildAvatar(PostItem item) {
    final Widget fallbackAvatar = CircleAvatar(
      radius: 18.r,
      backgroundColor: APP_LIGHT_PRIMARY,
      child: Icon(Icons.person, color: APP_PRIMARY, size: 20.sp),
    );

    if (item.avatarPath == null || item.avatarPath!.trim().isEmpty) {
      return fallbackAvatar;
    }

    return ClipOval(
      child: Image.asset(
        item.avatarPath!,
        width: 36.r,
        height: 36.r,
        fit: BoxFit.cover,
        errorBuilder: (
          BuildContext context,
          Object error,
          StackTrace? stackTrace,
        ) {
          return fallbackAvatar;
        },
      ),
    );
  }

  Widget _buildPlaceholderBox(String label) {
    return Container(
      height: 160.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: APP_BACKGROUND,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: APP_TEXT_MUTED.withValues(alpha: 0.4)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.image_outlined, size: 36.sp, color: APP_PRIMARY),
          SizedBox(height: 6.h),
          CustomFont(
            text: label,
            fontSize: 12,
            fontStyle: FontStyle.italic,
            color: APP_TEXT_MUTED,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final PostItem item = widget.postItem;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      color: APP_SURFACE,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _buildAvatar(item),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFont(
                        text: item.author,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: APP_TEXT_DARK,
                      ),
                      CustomFont(
                        text: item.dateLabel,
                        fontSize: 12,
                        color: APP_TEXT_MUTED,
                      ),
                    ],
                  ),
                ),
                Icon(Icons.more_horiz, color: APP_TEXT_MUTED, size: 20.sp),
              ],
            ),
            SizedBox(height: 10.h),
            CustomFont(text: item.content, fontSize: 14, color: APP_TEXT_DARK),
            if (item.imagePath != null) ...[
              SizedBox(height: 10.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.asset(
                  item.imagePath!,
                  height: 180.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (
                    BuildContext context,
                    Object error,
                    StackTrace? stackTrace,
                  ) {
                    return _buildPlaceholderBox(item.placeholderLabel);
                  },
                ),
              ),
            ] else if (item.hasPlaceholder) ...[
              SizedBox(height: 10.h),
              _buildPlaceholderBox(item.placeholderLabel),
            ],
            SizedBox(height: 10.h),
            const Divider(height: 1),
            SizedBox(height: 6.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: _toggleLike,
                  icon: Icon(
                    _isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                    size: 18.sp,
                    color: _isLiked ? APP_PRIMARY : APP_TEXT_MUTED,
                  ),
                  label: CustomFont(
                    text: '$_likes',
                    fontSize: 13,
                    color: _isLiked ? APP_PRIMARY : APP_TEXT_MUTED,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.chat_bubble_outline,
                      size: 17.sp,
                      color: APP_TEXT_MUTED,
                    ),
                    SizedBox(width: 4.w),
                    CustomFont(
                      text: '${item.commentsCount} Comment',
                      fontSize: 13,
                      color: APP_TEXT_MUTED,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share_outlined,
                      size: 17.sp,
                      color: APP_TEXT_MUTED,
                    ),
                    SizedBox(width: 4.w),
                    CustomFont(
                      text: '${item.sharesCount} Share',
                      fontSize: 13,
                      color: APP_TEXT_MUTED,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}