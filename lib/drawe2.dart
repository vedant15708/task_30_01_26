import 'package:flutter/material.dart';
import 'widget/customappbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Example',
      debugShowCheckedModeBanner: false,
      home: DrawerExample2(),
    );
  }
}

class DrawerExample2 extends StatefulWidget {
  const DrawerExample2({super.key});

  @override
  State<DrawerExample2> createState() => _DrawerExample2State();
}

class _DrawerExample2State extends State<DrawerExample2> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
        title: 'Drawer Example 2',
        bgColor: Colors.teal,
        leadingIcon: Icons.menu,
        onLeadingPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createHeader(),
            _createDrawerItem(icon: Icons.contacts, text: 'Contacts'),
            _createDrawerItem(icon: Icons.event, text: 'Events'),
            _createDrawerItem(icon: Icons.note, text: 'Notes'),
            Divider(),
            _createDrawerItem(icon: Icons.collections_bookmark, text: 'Steps'),
            _createDrawerItem(icon: Icons.face, text: 'Authors'),
            _createDrawerItem(
              icon: Icons.account_box,
              text: 'Flutter Documentation',
            ),
            _createDrawerItem(icon: Icons.stars, text: 'Useful Links'),
            Divider(),
            _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
            ListTile(title: Text('0.0.1'), onTap: () {}),
          ],
        ),
      ),
    );
  }
}

Widget _createHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/images/drawer-background.jpeg'),
      ),
    ),
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Text(
            "Flutter Step-by-Step",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _createDrawerItem({required IconData icon, required String text}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(padding: EdgeInsets.only(left: 8.0), child: Text(text)),
      ],
    ),
  );
}
