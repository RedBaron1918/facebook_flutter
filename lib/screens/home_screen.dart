import 'package:flutter/material.dart';
import 'package:facebook_page/data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "facebook",
          style: TextStyle(
              color: Colors.blue[700],
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
        actions: [
           Row(
            children:  [
               Padding(
                padding:  const EdgeInsets.all(10),
                child:  Icon(
                  Icons.search,
                  color: Colors.grey[600],
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  Icons.messenger_outline,
                  color: Colors.grey[600],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
