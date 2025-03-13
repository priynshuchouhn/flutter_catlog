import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String name = "Priyanshu";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Center(
        child: Container(
          child: Text("$name is Learning Flutter in $days days"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
