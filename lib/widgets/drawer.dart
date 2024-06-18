import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://yt3.googleusercontent.com/AGda_Py-tFDRwl3WMtnuGWj3DF3GppjmjEgvmFR4agemBBhzbSx8LoyRoWAjmOePwAKViDoYTQ=s160-c-k-c0x00ffffff-no-rj";
    return Drawer(
      backgroundColor: Colors.deepPurpleAccent,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                margin: EdgeInsets.zero,
                accountName: Text("TecnoGuy"),
                accountEmail: Text("tecnoguy69@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                )),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaler: TextScaler.linear(1.2),
            ),
            textColor: Colors.white,
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaler: TextScaler.linear(1.2),
            ),
            textColor: Colors.white,
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email",
              textScaler: TextScaler.linear(1.2),
            ),
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
