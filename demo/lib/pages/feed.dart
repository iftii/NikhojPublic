import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:demo/models/user.dart';
// import 'package:demo/pages/home.dart';
import 'package:demo/widgets/header.dart';
import 'package:demo/widgets/post.dart';
import 'package:demo/widgets/progress.dart';

final userRef = FirebaseFirestore.instance.collection('users');
final postRef = FirebaseFirestore.instance.collection('posts');

class Feed extends StatefulWidget {
  final Uuser currentUser;

  Feed({this.currentUser});

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  List<Post> posts;

  @override
  void initState() {
    super.initState();
    getTimeline();
  }

  getTimeline() async {
    print("Logged in via Google Authenticate");
    print("Post is being fetched in Timeline");
    QuerySnapshot snapshot = await postRef.get();
    List<Post> posts =
        snapshot.docs.map((doc) => Post.fromDocument(doc)).toList();
    setState(() {
      this.posts = posts;
    });
  }

  buildTimeline() {
    if (posts == null) {
      return circularProgress();
    } else if (posts.isEmpty) {
      return Text("No posts");
    } else {
      print("Post is being showed in Timeline");
      return ListView(children: posts);
    }
  }

  @override
  Widget build(context) {
    return Scaffold(
        appBar: header(context, isAppTitle: true),
        body: RefreshIndicator(
            onRefresh: () => getTimeline(), child: buildTimeline()));
  }
}
