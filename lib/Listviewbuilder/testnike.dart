import 'package:flutter/material.dart';

import '../Datepicker/Datepicker.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    HomePage(),
    ShopPage(),
    ProfilePage(),
    Orderpage(),
    Wishlist(),
  ];

  static List<Widget> _bottompages = <Widget>[
    HomePage(),
    ShopPage(),
    ProfilePage(),
    Orderpage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemdrawerTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav, Drawer, and Chips'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("john.doe@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "J",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                _onItemdrawerTapped(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Shop'),
              onTap: () {
                Navigator.pop(context);
                _onItemdrawerTapped(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                _onItemdrawerTapped(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('jj'),
              onTap: () {
                Navigator.pop(context);
                _onItemdrawerTapped(3);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Wishlist'),
              onTap: () {
                Navigator.pop(context);
                _onItemdrawerTapped(4);
              },
            ),
          ],
        ),
      ),
      body: _bottompages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Home',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedChipIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(10.0),
          child: Wrap(
            spacing: 10.0,
            children: List<Widget>.generate(3, (int index) {
              return ChoiceChip(
                label: Text('Chip ${index + 1}'),
                selected: _selectedChipIndex == index,
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChipIndex = selected ? index : _selectedChipIndex;
                  });
                },
              );
            }).toList(),
          ),
        ),
        Expanded(
          child: Center(
            child: getPageContent(_selectedChipIndex),
          ),
        ),
      ],
    );
  }

  Widget getPageContent(int index) {
    switch (index) {
      case 0:
        return Text(
          'Content for Chip 1',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        );
      case 1:
        return Text(
          'Content for Chip 2',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        );
      case 2:
        return Datepicker();
      default:
        return Text(
          'Content for Chip 1',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        );
    }
  }
}

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Shop Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Orderpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Order Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Wishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Wishlist',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
