import 'package:flutter/material.dart';
import 'post.dart';
import 'postList.dart';
import 'textInputWidged.dart';

class MyhomePage extends StatefulWidget {
  final String name;
  MyhomePage(this.name);
  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  List<Post> post = [];

  void newPost(String text) {
    this.setState(() {
      post.add(new Post(text, widget.name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ROCH ELECTRONICS'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: PostList(this.post),
            ),
            TextInputWidget(
              callback: this.newPost,
            )
          ],
        ));
  }
}
