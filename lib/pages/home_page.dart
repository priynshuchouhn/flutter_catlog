import 'package:flutter/material.dart';
import 'package:flutter_catlog/models/catlog.dart';
import 'package:flutter_catlog/widgets/item_widget.dart';
import 'package:flutter_catlog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String name = "Priyanshu";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: ListView.builder(
        itemCount: CatlogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: CatlogModel.items[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
