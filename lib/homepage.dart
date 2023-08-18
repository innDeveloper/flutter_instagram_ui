import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/data/userData.dart';
import 'package:flutter_instagram_ui/myAppBar.dart';
import 'package:flutter_instagram_ui/widgets/customBottomNavigationBar.dart';
import 'package:flutter_instagram_ui/widgets/getContent.dart';

import 'package:flutter_instagram_ui/widgets/getStories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyTopBar(
        title: "Instagram",
        backgroundColor: Color(0x00125688),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        controller: _tabController,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: userData.map((userData) {
                  return getStories(
                    username: userData["username"]!,
                    avatarPath: userData["avatarPath"]!,
                  );
                }).toList(),
              ),
            ),
            const Divider(
              height: 2,
              color: Colors.grey,
            ),
            Expanded(
              child: ListView(
                children: userPostData.map((userPostData) {
                  return ContentPostWidget(
                    username: userPostData["username"]!,
                    avatarPath: userPostData["avatarPath"]!,
                    postPath: userPostData[
                        "avatarPath"]!, // Burada postPath'i avatarPath olarak kullandım, düzeltmeyi unutmayın
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
