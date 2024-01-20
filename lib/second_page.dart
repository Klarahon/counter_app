import 'package:counter_app/home_page.dart';
import 'package:flutter/material.dart';

import 'third_page.dart';

// ignore: must_be_immutable
class SecondPage extends StatelessWidget {
  SecondPage({super.key, required this.text});
  int text;

  //get text => san;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(child: Text("Second Page")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffAAAAAA).withOpacity(0.8),
              ),
              height: 44.0,
              width: 325.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Text(
                    'сан:$text',
                    style: const TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
            IconButton(
                icon: const Icon(
                  Icons.next_plan,
                  size: 70,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(text: san),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
