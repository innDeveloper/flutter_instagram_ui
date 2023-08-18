import 'package:flutter/material.dart';

class MyTopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;

  final Size preferredSize;
  const MyTopBar({required this.title, required this.backgroundColor})
      : preferredSize = const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        elevation: 8,
        child: Container(
          height: 50,
          color: backgroundColor,
          child: const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
              Spacer(),
              Text(
                "Instagram",
                style: TextStyle(fontFamily: "Billabong", fontSize: 28),
              ),
              Spacer(),
              RotationTransition(
                turns: AlwaysStoppedAnimation(-15 / 360),
                child: Icon(
                  Icons.send,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
