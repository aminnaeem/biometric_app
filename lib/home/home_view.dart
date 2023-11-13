import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(400))
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Home View'
        ),
      ),
    );
  }
}