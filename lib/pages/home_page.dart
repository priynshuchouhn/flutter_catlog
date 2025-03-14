import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catlog/models/catlog.dart';
import 'package:flutter_catlog/widgets/item_widget.dart';
import 'package:flutter_catlog/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Priyanshu";

  @override
  void initState() {
    super.initState();

    loadData();
  }

  loadData() async {
    final catlogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catlogJson);
    var products = decodeData["products"];
    print(products);
  }

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
