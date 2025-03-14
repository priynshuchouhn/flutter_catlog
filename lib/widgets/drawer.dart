import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  final imageUrl =
      "https://images.crunchbase.com/image/upload/c_thumb,h_170,w_170,f_auto,g_face,z_0.7,b_white,q_auto:eco,dpr_2/miu4jfquqewpz0tsbebi";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            accountName: Text("Priyanshu"),
            accountEmail: Text("priynshuchouhn@gmail.com"),
          ),
          ListTile(leading: Icon(CupertinoIcons.home), title: Text("Home")),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text("Profile"),
          ),
          ListTile(leading: Icon(CupertinoIcons.mail), title: Text("Email")),
        ],
      ),
    );
  }
}
