import 'package:chat_app/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

//Current User
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/user-1.jpg',
);

//Users
final User greg = User(
  id: 1,
  name: 'Greg',
  imageUrl: 'assets/images/user-2.jpg',
);

final User james = User(
  id: 2,
  name: 'James',
  imageUrl: 'assets/images/user-3.jpg',
);

final User john = User(
  id: 3,
  name: 'John',
  imageUrl: 'assets/images/user-4.jpg',
);

final User olivia = User(
  id: 4,
  name: 'Olivia',
  imageUrl: 'assets/images/user-5.jpg',
);

final User sam = User(
  id: 5,
  name: 'Sam',
  imageUrl: 'assets/images/user-6.jpg',
);

final User samsan = User(
  id: 6,
  name: 'Olivia',
  imageUrl: 'assets/images/user-5.jpg',
);

//Favourite Contacts
List<User> favourites = [sam, olivia, john, james, greg];

//Sample chats in home screen
List<Message> chats = [
  Message(
    sender: james,
    time: '2.30 PM',
    text: 'Do you know that David was hit by a two-wheeler?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '3.30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '4.30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '6.30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: greg,
    time: '9.30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '3.30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
];

//Sample messages in chat screen
List<Message> messages = [
  Message(
    sender: james,
    time: '2.00 PM',
    text: 'Do you know that David was hit by a two-wheeler?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2.30 PM',
    text: 'Oh no! When did it happen?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '4.30 PM',
    text: 'He was hit by a motorcycle on his way back from school yesterday.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '6.30 PM',
    text: 'How did it happen?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: james,
    time: '9.30 PM',
    text:
        'He was crossing the road at a zebra crossing when a speeding motorcyclist jumped the traffic light and knocked him down.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '10.30 PM',
    text: 'Is he badly injured?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '11.00 PM',
    text: ' He has fractured his arm.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '11.30 PM',
    text:
        'Oh that’s sad! I suppose he will not be able to participated the Inter-school swimming competition next week. He was sure to have won the trophy this year, too.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '11.35 PM',
    text: 'Yes. He was quite upset about it.',
    isLiked: true,
    unread: true,
  ),
];
