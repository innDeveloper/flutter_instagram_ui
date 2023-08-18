import 'package:flutter/material.dart';

Widget getStories({required String username, required String avatarPath}) {
  bool isSpecialUser = (username ==
      "İnanc"); // Kullanıcı adı "inanc" ise özel olarak işaretlensin

  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 8, bottom: 6, left: 8, right: 8),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(avatarPath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: Colors.pink, width: 1),
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            if (isSpecialUser)
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
      Text(
        username,
        style: const TextStyle(fontFamily: "ProximaNova", fontSize: 12),
      )
    ],
  );
}
