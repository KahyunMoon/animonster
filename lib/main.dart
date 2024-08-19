import 'package:animonster/common/routers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AniMonster());
}

class AniMonster extends StatelessWidget {
  const AniMonster({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routers,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
