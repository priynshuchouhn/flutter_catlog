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
    await Future.delayed(Duration(seconds: 2));
    final catlogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catlogJson);
    var products = decodeData["products"];
    CatlogModel.items =
        List.from(products).map<Item>((item) => Item.fromJson(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child:
            CatlogModel.items.isNotEmpty
                ? ListView.builder(
                  itemCount: CatlogModel.items.length,
                  itemBuilder:
                      (context, index) =>
                          ItemWidget(item: CatlogModel.items[index]),
                )
                : Center(child: CircularProgressIndicator()),
      ),
      drawer: MyDrawer(),
    );
  }
}
