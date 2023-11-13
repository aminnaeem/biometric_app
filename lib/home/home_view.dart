import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Text(
          'Home View',
          style: TextStyle(
            color: Colors.blue
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
            splashRadius: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.wechat_rounded),
            splashRadius: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
              ),
              Expanded(
                child: TextField()
              )
            ],
          )
        ],
      ),
    );
  }
}