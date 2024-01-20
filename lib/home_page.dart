import 'package:flutter/material.dart';

import 'second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int san = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("тапшырма 1")),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                'сан:$san',
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {});
                  san = san - 1;
                },
                child: AddRemoveWidget(
                  text: '-',
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                  san = san + 1;
                },
                child: AddRemoveWidget(
                  text: "+",
                ),
              ),
            ],
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
                  builder: (context) => SecondPage(
                    text: san,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class AddRemoveWidget extends StatelessWidget {
  const AddRemoveWidget({
    super.key,
    required this.text,
  });
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(08.0),
        color: Colors.blueAccent,
      ),
      height: 50.0,
      width: 90.0,
      child: Center(
          child: Text(
        text!,
        style: const TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      )),
    );
  }
}
