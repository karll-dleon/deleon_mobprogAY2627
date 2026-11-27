import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../models/notification_item.dart';
import '../widgets/notification.dart' as notif;

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({
    super.key,
    this.notifications = kSampleNotifications,
  });

  final List<NotificationItem> notifications;

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: APP_SURFACE,
      width: 1.sw,
      child: ListView.separated(
        itemCount: widget.notifications.length,
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 1),
        itemBuilder: (BuildContext context, int index) {
          final NotificationItem item = widget.notifications[index];
          return notif.NotificationTile(
            name: item.name,
            post: item.post,
            description: item.description,
            isUnread: item.isUnread,
          );
        },
      ),
    );
  }
}
