import 'package:flutter/material.dart';
import 'widget/customappbar.dart';

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
        title: 'Home Page',
        bgColor: Colors.blue,
        showEndDrawer: true,
        showLeading: false,
      ),

      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text("Home Body", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                foregroundColor: Colors.black,
                elevation: 0,
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                minimumSize: Size(double.infinity, 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
              child: Text("open Drawer"),
            ),
          ],
        ),
      ),

      // endDrawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       UserAccountsDrawerHeader(
      //         decoration: BoxDecoration(color: Colors.blue),
      //         accountName: Text("Kalpesh Khandla"),
      //         accountEmail: Text("kalpesh.khandla@bosc.in"),
      //         currentAccountPicture: CircleAvatar(
      //           backgroundColor: Colors.blue.shade800,
      //           child: const Text(
      //             "KK",
      //             style: TextStyle(fontSize: 30, color: Colors.white),
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.home),
      //         title: const Text("Home"),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.grid_view_rounded),
      //         title: const Text("categories"),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.add_box),
      //         title: const Text("Add Items"),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.info),
      //         title: const Text("About Us"),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.share),
      //         title: const Text("Share With Friends"),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.rate_review_rounded),
      //         title: const Text("Rate &Review"),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.flag),
      //         title: const Text("Privacy Policy"),
      //         onTap: () {},
      //       ),
      //     ],
      //   ),
      // ),
      endDrawer: SafeArea(
        child: NavigationDrawer(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              accountName: Text("Kalpesh Khandla"),
              accountEmail: Text("kalpesh.khandla@bosc.in"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue.shade800,
                child: const Text(
                  "KK",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.grid_view_rounded),
              title: const Text("categories"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.add_box),
              title: const Text("Add Items"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About Us"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text("Share With Friends"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.rate_review_rounded),
              title: const Text("Rate &Review"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.flag),
              title: const Text("Privacy Policy"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
