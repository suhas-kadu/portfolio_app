import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                "assets/img.jpg",
                height: 200,
                width: 200,
              ),
            ),
          ),
          IconsPage(),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Profile_card(),
            ),
          ),
        ],
      ),
    );
  }
}

class IconsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            Icons.verified_user,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            Icons.chat,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            Icons.help,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class Profile_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 400,
        //width: 400,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            Text(
              "Suhas Kadu",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 40,
                letterSpacing: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            Center(
              child: Text(
                'Flutter Developer',
                style: GoogleFonts.roboto(
                  letterSpacing: 5,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  height: 2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "@The Robotics Forum",
              style: GoogleFonts.roboto(
                fontSize: 15,
              ),
            ),
            Text(
              "\n\nSkills",
              style: GoogleFonts.gayathri(
                fontSize: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                "App Development\nDeep Learing\nMachine Learning\nGoogle Cloud Product",
                style: GoogleFonts.montserrat(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  wordSpacing: 3,
                  height: 1.5,
                ),
                textAlign: TextAlign.left,
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class EmailSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Suhas Kadu",
            ),
            accountEmail: Text("kadusuhas71@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/img.jpg"),
              //NetworkImage("assets/img.jpg")  ,
            ),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("kadusuhas71@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text("All inboxes"),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Starred"),
          ),
          ListTile(
            leading: Icon(Icons.label_important),
            title: Text("Important"),
          ),
          ListTile(
            leading: Icon(Icons.send),
            title: Text("Sent"),
          ),
          ListTile(
            leading: Icon(Icons.drafts),
            title: Text("Drafts"),
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text("Bin"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help"),
          ),
        ],
      ),
    );
  }
}
