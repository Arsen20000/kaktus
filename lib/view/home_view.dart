import 'package:flutter/material.dart';

import 'drawer_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 24,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const DrawerView(),
              ),
            );
          },
        ),
      ),
      body: const Text(
        'Kaktus Media',
        style: TextStyle(fontSize: 80),
      ),
    );
  }
}
