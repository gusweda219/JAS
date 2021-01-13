import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasapp/models/by_gender.dart';
import 'package:jasapp/widgets/category_content.dart';
import 'package:jasapp/widgets/home_content.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String _selectedGender = 'Pria';
  ByGender category = byGender[0];

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(40.0)
              )
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: GestureDetector(
            onTap: _showBottom,
            child: Row(
              children: <Widget>[
                Text('$_selectedGender'),
                Icon(
                    Icons.arrow_drop_down
                )
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 28.0,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_basket),
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 5.0),
              insets: EdgeInsets.symmetric(horizontal: 80.0),
            ),
            tabs: <Widget>[
              Tab(child: Text('Beranda')),
              Tab(child: Text('Kategori')),
            ],
          ),
        ),
        drawer: SafeArea(
          child: Drawer(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  child: Image.asset(
                    'images/drawer.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  leading: Text(
                    'Akun Saya',
                    style: TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                ListTile(
                  leading: Text(
                    'Wallet',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Text(
                    'Rp 0',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                ),
                ListTile(
                  leading: Text(
                    'Pesanan Saya',
                    style: TextStyle(
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
            children: [
              HomeContent(bestSellers: category.bestSellers),
              CategoryContent(category: category),
            ]
        )
      ),
    );
  }

  void _showBottom()
  {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(20.0),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  child: Text(
                    'Pria',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedGender = 'Pria';
                      category = byGender[0];
                      Navigator.pop(context);
                    });
                  },
                ),
                GestureDetector(
                  child: Text(
                    'Wanita',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedGender = 'Wanita';
                      category = byGender[1];
                      Navigator.pop(context);
                    });
                  },
                )
              ],
            ),
          );
        }
    );
  }
}
