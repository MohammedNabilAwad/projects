import 'package:flutter/material.dart';
import 'package:projects/player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pdge',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.grey[900],
          textTheme: TextTheme()),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _s = 0;
  PageController pageController = PageController();
  void onTapped(int index) {
    setState(() {
      _s = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("cnjnnksmck", style: TextStyle(color: Colors.green[700])),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green.withOpacity(0.2)),
              accountName: Text("user name"),
              accountEmail: Text("user@email.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey[700],
                child: Icon(Icons.person),
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text("Home Page"),
                  leading: Icon(Icons.home),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Home Page"),
                  leading: Icon(Icons.home),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Home Page"),
                  leading: Icon(Icons.home),
                  onTap: () {},
                ),
                Divider(
                  thickness: 1.5,
                ),
                ListTile(
                  title: Text("Home Page"),
                  leading: Icon(Icons.home),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Support"),
                  leading: Icon(Icons.mark_as_unread),
                  onTap: () {},
                ),
                Divider(
                  thickness: 1.5,
                ),
                ListTile(
                  title: Text("Sing Out"),
                  leading: Icon(Icons.login_outlined),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      body: PageView(
        controller: pageController,
        children: [
          palyer(),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note), label: 'Player'),
          BottomNavigationBarItem(icon: Icon(Icons.dangerous), label: 'njndj'),
          BottomNavigationBarItem(icon: Icon(Icons.dangerous), label: 'jzbcis'),
          BottomNavigationBarItem(icon: Icon(Icons.dangerous), label: 'erj4ii'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: _s,
        selectedItemColor: Colors.green[700],
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
