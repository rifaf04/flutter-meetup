// ------- THREAD -----------

import 'package:meetup/post.dart';
import 'package:meetup/user.dart';

class Thread {
  final String title;
  final User user;
  final String updatedAt;
  final List<Post> posts;

  Thread.fromJSON(Map<String, dynamic> parsedJson)
      : this.title = parsedJson['title'],
        this.user = User.fromJSON(parsedJson['user']),
        this.updatedAt = parsedJson['updatedAt'],
        this.posts = parsedJson['posts'].map<Post>((json) => Post.fromJSON(json)).toList() ?? [];
}