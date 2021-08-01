import 'package:chatui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  bool? isLiked = false;
  bool? unread = true;

  Message(
      {required this.sender,
      required this.time,
      required this.text,
      this.isLiked,
      this.unread});
}

final User currentUser =
    User(id: 0, name: 'Anamika Anu', imgurl: 'assets/17.jpg');
final User user1 = User(id: 1, name: 'Sajal Halder', imgurl: 'assets/34.jpg');
final User user2 =
    User(id: 2, name: 'Sinthiya Swopno', imgurl: 'assets/44.jpg');
final User user3 = User(id: 3, name: 'Nobony Roy', imgurl: 'assets/50.jpg');
final User user4 =
    User(id: 4, name: 'Sabrina Mehjabeen', imgurl: 'assets/71.jpg');
final User user5 = User(id: 5, name: 'Samia Rahman', imgurl: 'assets/82.jpg');
final User user6 = User(id: 6, name: 'Abir Hassan', imgurl: 'assets/83.jpg');
final User user7 = User(id: 7, name: 'Sumiya Ahmed', imgurl: 'assets/84.jpg');
final User user8 = User(id: 8, name: 'Mahanaz Miyo', imgurl: 'assets/48.jpg');

List<User> favorites = [user4, user5, user8, user1];

List<Message> chats = [
  Message(
      sender: user1,
      time: '8:12 PM',
      text: 'How are you doing? I hope you are well and I am fine too',
      isLiked: true,
      unread: true),
  Message(
      sender: user2,
      time: '8:12 PM',
      text: 'How are you doing? I hope you are well and I am fine too',
      isLiked: true,
      unread: false),
  Message(
      sender: user3,
      time: '8:12 PM',
      text: 'How are you doing? I hope you are well and I am fine too',
      isLiked: true,
      unread: false),
  Message(
      sender: user4,
      time: '8:13 PM',
      text: 'How are you doing? I hope you are well and I am fine too',
      isLiked: true,
      unread: true),
  Message(
      sender: user5,
      time: '8:13 PM',
      text: 'How are you doing? I hope you are well and I am fine too',
      isLiked: true,
      unread: true),
  Message(
      sender: user6,
      time: '8:13 PM',
      text: 'How are you doing? I hope you are well and I am fine too',
      isLiked: true,
      unread: false),
  Message(
      sender: user7,
      time: '8:16 PM',
      text: 'How are you doing? I hope you are well and I am fine too',
      isLiked: true,
      unread: true),
  Message(
      sender: user8,
      time: '8:17 PM',
      text: 'How are you doing? I hope you are well and I am fine too',
      isLiked: true,
      unread: false),
];

List<Message> messages = [
  Message(
      sender: user8,
      time: '8:20 PM',
      text: 'Lets have a walk, sweet memories and small talk.',
      isLiked: true,
      unread: false),
  Message(
      sender: currentUser,
      time: '8:20 PM',
      text: 'Yes, I told you earlier that I am gonna going to the place',
      isLiked: true,
      unread: true),
  Message(
      sender: user6,
      time: '8:19 PM',
      text:
          'Good to see you again dear. Hope that, this time we do no need to be more far.',
      isLiked: false,
      unread: false),
  Message(
      sender: user5,
      time: '8:19 PM',
      text: 'Sorry, I am not feeling well at this moment, will go later.',
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: '8:19 PM',
      text: 'Hola! Lets talk for a minute. Maybe we will make it further',
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: '8:19 PM',
      text: 'Hi, I would love to go on a tour with you badly.',
      isLiked: true,
      unread: false),
  Message(
      sender: user2,
      time: '8:19 PM',
      text: 'Long time no see, hope that you are doing great.',
      isLiked: true,
      unread: false),
  Message(
      sender: currentUser,
      time: '8:19 PM',
      text: 'How are you doing? I hope you are well and I am fine too',
      isLiked: false,
      unread: true),
  Message(
      sender: user8,
      time: '8:19 PM',
      text: 'Lets have a walk, sweet memories and small talk.',
      isLiked: true,
      unread: false),
  Message(
      sender: currentUser,
      time: '8:19 PM',
      text: 'Yes, I told you earlier that I am gonna going to the place',
      isLiked: false,
      unread: true),
  Message(
      sender: user6,
      time: '8:18 PM',
      text:
          'Good to see you again dear. Hope that, this time we do no need to be more far.',
      isLiked: false,
      unread: false),
  Message(
      sender: user5,
      time: '8:18 PM',
      text: 'Sorry, I am not feeling well at this moment, will go later.',
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: '8:18 PM',
      text: 'Hola! Lets talk for a minute. Maybe we will make it further',
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: '8:18 PM',
      text: 'Hi, I would love to go on a tour with you badly.',
      isLiked: true,
      unread: false),
  Message(
      sender: user2,
      time: '8:17 PM',
      text: 'Long time no see, hope that you are doing great.',
      isLiked: false,
      unread: false),
  Message(
      sender: currentUser,
      time: '8:17 PM',
      text: 'How are you doing? I hope you are well and I am fine too',
      isLiked: false,
      unread: true),
];
