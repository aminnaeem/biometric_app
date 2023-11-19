import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  TextEditingController postController = TextEditingController();

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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: TextField(
                      controller: postController,
                      decoration: const InputDecoration(
                        hintText: "What's on your mind?",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))
                        )
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(
                        fontSize: 14
                      ),
                    ),
                  ),
                )
              )
            ],
          ),
          Container(
            height: 44,
            decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal  : BorderSide(
                  color: Colors.black12,
                  width: 1
                )
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 2),
                        child: Icon(
                          Icons.emergency_recording_rounded,
                          size: 16,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        'Live',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10
                        ),
                      )
                    ],
                  )
                ),
                Container(
                  height: 20,
                  width: 1,
                  decoration: BoxDecoration(
                    color: Colors.black12
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 2),
                        child: Icon(
                          Icons.image_rounded,
                          size: 16,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        'Photo',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10
                        ),
                      )
                    ],
                  )
                ),
                Container(
                  height: 20,
                  width: 1,
                  decoration: BoxDecoration(
                    color: Colors.black12
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 2),
                        child: Icon(
                          Icons.location_pin,
                          size: 16,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        'Check In',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10
                        ),
                      )
                    ],
                  )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}