import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text('Ani'),
                      Text('Monster'),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      print('메뉴 띄우기');
                    },
                    child: const Icon(Icons.menu),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const SizedBox(
                      height: 50,
                      child: Text(
                        '최애 캐릭터와 채팅만 해도,',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                      child: Text(
                        '멋진 라노베 완성!',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
