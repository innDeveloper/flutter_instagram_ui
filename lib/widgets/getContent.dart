import 'dart:math';

import 'package:flutter/material.dart';

class ContentPostWidget extends StatelessWidget {
  final String username;
  final String avatarPath;
  final String postPath;

  const ContentPostWidget({
    required this.username,
    required this.avatarPath,
    required this.postPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(avatarPath),
              ),
            ),
            Text(
              username,
              style: const TextStyle(
                  fontFamily: "ProximaNova", fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(postPath), fit: BoxFit.cover)),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const Icon(
                Icons.favorite_border,
                size: 30,
              ),
              const SizedBox(
                width: 15,
              ),
              Transform(
                transform: Matrix4.rotationY(pi),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.chat_bubble_outline,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const RotationTransition(
                turns: AlwaysStoppedAnimation(-25 / 360),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Icon(Icons.send, size: 26),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.bookmark_border,
                size: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
