import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    required this.name,
    required this.post,
    required this.description,
    this.isUnread = false,
  });

  final String name;
  final String post;
  final String description;
  final bool isUnread;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isUnread ? APP_LIGHT_PRIMARY.withValues(alpha: 0.35) : APP_SURFACE,
      padding: EdgeInsets.all(15.sp),
      child: Row(
        children: [
          Icon(Icons.person, size: 50.sp, color: APP_PRIMARY),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomFont(
                  text: name,
                  fontSize: 20,
                  color: APP_TEXT_DARK,
                  fontWeight: FontWeight.w800,
                ),
                CustomFont(
                  text: 'Posted: $post',
                  fontSize: 13,
                  color: APP_TEXT_DARK,
                ),
                CustomFont(
                  text: description,
                  fontSize: 12,
                  color: APP_TEXT_MUTED,
                  fontStyle: FontStyle.italic,
                ),
              ],
            ),
          ),
          Icon(Icons.more_horiz, color: APP_TEXT_MUTED, size: 22.sp),
        ],
      ),
    );
  }
}
