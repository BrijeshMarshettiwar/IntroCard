import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Center(
            child: Text(
              'Intro Card',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 70, top: 20),
          padding: EdgeInsets.all(15),
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(20), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black26, // Shadow color
                blurRadius: 10, // Softness
                spreadRadius: 2, // How much it spreads
                offset: Offset(4, 4), // Shadow position
              ),
            ],
          ),
          child: Row(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      15,
                    ), // Round image corners too
                    child: CircleAvatar(
                      radius: 40, // size of the avatar
                      backgroundImage: AssetImage('images/avatar.jpg'),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [Text('Name: John Doe')]),
                    Row(children: [Text('Title: Flutter Developer')]),
                    Row(
                      children: [
                        Text(
                          'description: I’m John Doe, a Flutter Developer specializing in building fast, responsive, and user-friendly mobile apps for Android and iOS.',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
