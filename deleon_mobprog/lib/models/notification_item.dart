class NotificationItem {
  const NotificationItem({
    required this.id,
    required this.name,
    required this.post,
    required this.description,
    required this.isUnread,
  });

  final int id;
  final String name;
  final String post;
  final String description;
  final bool isUnread;
}

const List<NotificationItem> kSampleNotifications = [
  NotificationItem(
    id: 1,
    name: 'Kuya (Big Brother)',
    post: 'Day 34 House Update',
    description: 'Posted a new announcement in the house',
    isUnread: true,
  ),
  NotificationItem(
    id: 2,
    name: 'Allen',
    post: 'Birthday Party Update',
    description: 'Shared moments from his birthday celebration',
    isUnread: true,
  ),
  NotificationItem(
    id: 3,
    name: 'Lexi Gonzales',
    post: 'New Housemate Entry',
    description: 'Joined the PBB Collab 3.0 house',
    isUnread: true,
  ),
  NotificationItem(
    id: 4,
    name: 'Jeo',
    post: 'Birthday Cake Mission',
    description: 'Baked a birthday cake for Allen',
    isUnread: false,
  ),
  NotificationItem(
    id: 5,
    name: 'Gehlee Dangca',
    post: 'Pinoy Street Swag',
    description: 'Showcased her street swag look',
    isUnread: false,
  ),
  NotificationItem(
    id: 6,
    name: 'Eugene Reggio',
    post: 'Korean Language Chat',
    description: 'Practiced Korean phrases with Gehlee',
    isUnread: false,
  ),
  NotificationItem(
    id: 7,
    name: 'Race Matias',
    post: 'Housemate Journey',
    description: 'Shared his first impressions inside',
    isUnread: false,
  ),
  NotificationItem(
    id: 8,
    name: 'Victoria Vargas',
    post: 'Fashion & House Life',
    description: 'Posted an update on settling in',
    isUnread: false,
  ),
  NotificationItem(
    id: 9,
    name: 'Yza Uy',
    post: 'New Housemate Roster',
    description: 'Welcomed as one of the five new arrivals',
    isUnread: false,
  ),
  NotificationItem(
    id: 10,
    name: 'Raheel',
    post: 'Confession Room Talk',
    description: 'Opened up during a talk with Kuya',
    isUnread: false,
  ),
  NotificationItem(
    id: 11,
    name: 'Nathan',
    post: 'Fashion Task',
    description: 'Shared thoughts on the weekly outfit task',
    isUnread: false,
  ),
  NotificationItem(
    id: 12,
    name: 'Mikee',
    post: 'House Reflection',
    description: 'Apologized and reflected with housemates',
    isUnread: false,
  ),
  NotificationItem(
    id: 13,
    name: 'Shea',
    post: 'Collab Challenge',
    description: 'Completed a fast challenge run',
    isUnread: false,
  ),
  NotificationItem(
    id: 14,
    name: 'Lans',
    post: 'House Milestones',
    description: 'Celebrated milestones in the house',
    isUnread: false,
  ),
  NotificationItem(
    id: 15,
    name: 'Daniela',
    post: 'House Dynamics',
    description: 'Reacted to a recent house interaction',
    isUnread: false,
  ),
  NotificationItem(
    id: 16,
    name: 'Nicole Fortuna',
    post: 'Eviction Night Recap',
    description: 'Thanked supporters after eviction night',
    isUnread: false,
  ),
  NotificationItem(
    id: 17,
    name: 'Cianne Dominguez',
    post: 'Collab Journey',
    description: 'Shared her parting message with fans',
    isUnread: false,
  ),
  NotificationItem(
    id: 18,
    name: 'Robbie Jaworski',
    post: 'Ka-Collab Charity Mission',
    description: 'Helped kick off the charity mission',
    isUnread: false,
  ),
  NotificationItem(
    id: 19,
    name: 'Will Ashley',
    post: 'Houseguest Visit',
    description: 'Dropped by as a special houseguest',
    isUnread: false,
  ),
  NotificationItem(
    id: 20,
    name: 'Heath Jornales',
    post: 'Houseguest Visit',
    description: 'Joined the houseguest visit lineup',
    isUnread: false,
  ),
];
