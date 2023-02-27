import 'package:facebook_page/models/user.dart';
import 'package:facebook_page/models/post.dart';
import 'package:facebook_page/models/story.dart';
import 'package:facebook_page/models/comment.dart';

User currentUser = const User(
  name: 'Kotiko Asatiani',
  imageUrl:
      'https://scontent.ftbs5-2.fna.fbcdn.net/v/t1.18169-9/1391743_603079143062900_1606433576_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=FOCSFsX_C5sAX8YmXst&tn=gseNlHv__e8_ljPz&_nc_ht=scontent.ftbs5-2.fna&oh=00_AfCcTd_QUQlubH2VKVxmtc5nKC9Vx6Lpfibh5YbER6Na9Q&oe=6419A5CA',
);

final List<User> onlineUsers = [
  const User(
    name: 'Luka jojua',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  const User(
    name: 'John Doe',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  const User(
    name: 'Jane Doe',
    imageUrl:
        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  ),
  const User(
    name: 'john Smith',
    imageUrl:
        'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
  ),
  const User(
    name: 'Napoleon',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  const User(
    name: 'someone cool',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  const User(
    name: 'rando',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  const User(
      name: 'stuff and stuff',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  const User(
    name: 'random name',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  const User(
    name: 'stalin69420',
    imageUrl:
        "https://images.unsplash.com/photo-1647375233873-328cb125bcdc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=633&q=80",
  ),
  const User(
    name: 'randoman420',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  const User(
    name: 'very cool name',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  const User(
    name: 'batman',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  const User(
    name: 'Amy Smith',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  const User(
    name: 'cool dude idk',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  const User(
    name: 'ching man',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  const User(
    name: 'randoman69',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  const User(
      name: 'Elizabeth Wong',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  const User(
    name: 'stalin69420',
    imageUrl:
        "https://images.unsplash.com/photo-1647375233873-328cb125bcdc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=633&q=80",
  ),
  const User(
    name: 'Martin luther King',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
];

final List<Story> stories = [
  Story(
    user: onlineUsers[2],
    imageUrl:
        'https://images.unsplash.com/photo-1676825796827-7b604b9213fc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl:
        'https://images.unsplash.com/photo-1676806729754-0146d35a2439?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl:
        'https://images.unsplash.com/photo-1676729888436-cfc1b1466cbf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
  ),
  Story(
    user: onlineUsers[9],
    imageUrl:
        'https://images.unsplash.com/photo-1676806995068-fe6c530423dc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[7],
    imageUrl:
        'https://images.unsplash.com/photo-1670272499232-d6c55af87386?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  ),
  Story(
    user: onlineUsers[2],
    imageUrl:
        'https://images.unsplash.com/photo-1676805534914-fa461aafdf19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl:
        'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl:
        'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
  ),
  Story(
    user: onlineUsers[9],
    imageUrl:
        'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[7],
    imageUrl:
        'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
  ),
];

final List<Post> posts = [
  Post(
    user: currentUser,
    comment: [...comments],
    caption: 'comminism is gay',
    timeAgo: '58m',
    imageUrl:
        'https://images.unsplash.com/photo-1619965375772-32480b549b7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    likes: 100000000,
    commentSum: 90004,
    shares: 78896,
  ),
  Post(
    user: onlineUsers[5],
    comment: [...comments],
    caption: "kote is right communism is hella gay",
    timeAgo: '3hr',
    imageUrl: null,
    likes: 1083,
    commentSum: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[4],
    comment: [...comments],
    caption: 'check out this good looking napoleon.',
    timeAgo: '8hr',
    imageUrl:
        'https://images.unsplash.com/photo-1587122569949-ae6e755c6bdc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=885&q=80',
    likes: 894,
    commentSum: 201,
    shares: 27,
  ),
  Post(
    user: onlineUsers[3],
    comment: [...comments],
    caption: 'man i wish i had some napoleon',
    timeAgo: '15hr',
    imageUrl: null,
    likes: 69,
    commentSum: 420,
    shares: 42,
  ),
  Post(
    user: onlineUsers[0],
    comment: [...comments],
    caption: "check out this view",
    timeAgo: '1d',
    imageUrl:
        "https://images.unsplash.com/photo-1563284223-333497472e88?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80",
    likes: 482,
    commentSum: 37,
    shares: 9,
  ),
  Post(
    user: onlineUsers[9],
    comment: [...comments],
    caption: 'communism vs fascism round 2 if we hit 1 like',
    timeAgo: '1d',
    imageUrl: null,
    likes: 1,
    shares: 1941,
    commentSum: 30000000,
  )
];
final List<Comment> comments = [
  Comment(user: onlineUsers[0], comment: "Amen Brother!"),
  Comment(
      user: onlineUsers[1],
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. LoremLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem"),
  Comment(user: onlineUsers[2], comment: "something very nice and cool idk"),
  Comment(
      user: onlineUsers[3],
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem"),
  Comment(
      user: onlineUsers[4],
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
  Comment(user: onlineUsers[5], comment: "very random and interesting stuff"),
  Comment(
      user: onlineUsers[6], comment: "man i would love to have cool mustache"),
  Comment(
      user: onlineUsers[7],
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem"),
  Comment(
      user: onlineUsers[8],
      comment: "wow this post just changed my life thank you kote"),
  Comment(
      user: onlineUsers[9],
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem"),
];
