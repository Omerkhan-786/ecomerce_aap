import 'package:e_commorce/commponents/cardpage.dart';
import 'package:e_commorce/commponents/shoepage.dart';
import 'package:e_commorce/pages/mynavigator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int _selectedindex = 0;

class _HomePageState extends State<HomePage> {
  void selectedindex(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    //shoes page
    const Shoepage(),
    //card page
    const Cardpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Column(
            children: [
              DrawerHeader(
                child: Image.asset(
                  'lib/images/nikelogo.png',
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  
                  leading: Icon(Icons.home),
                  title: Text(
                    "Home_page ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.card_giftcard),
                  title: Text(
                    "card page ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
            Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text(
                    "LOG OUT  ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
        
      ),
      bottomNavigationBar: Mynavigator(
        onTabChange: (index) => selectedindex(index),
      ),

      body: _pages[_selectedindex],
    );
  }
}
