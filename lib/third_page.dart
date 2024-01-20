import 'package:counter_app/home_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ThirdPage extends StatefulWidget {
  ThirdPage({
    super.key,
    required this.text,
  });
  int text;
  @override
  State<ThirdPage> createState() => ThirdPageState();
}

class ThirdPageState extends State<ThirdPage> {
  get text => san = san - 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Third Page"),
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
              child: Center(
                child: Text(
                  'сан:$text',
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.next_plan,
                size: 70,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
