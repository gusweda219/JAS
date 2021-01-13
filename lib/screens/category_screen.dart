import 'package:jasapp/screens/item_secreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasapp/models/category_selected.dart';
import 'package:intl/intl.dart';

class CategoryScreen extends StatefulWidget {
  List<CategorySelected> categorySelect;
  String nameCategory;

  CategoryScreen({
    this.categorySelect,
    this.nameCategory
  });
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  final formatter = NumberFormat('#,##0', 'en_US');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40.0)
            )
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
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
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Center(
                    child: Text(
                      widget.nameCategory,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.sort,
                                size: 20.0,
                              ),
                              SizedBox(width: 10.0,),
                              Text(
                                'Sort',
                                style: TextStyle(
                                  fontSize: 16
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.filter_list,
                                size: 20.0,
                              ),
                              SizedBox(width: 10.0,),
                              Text(
                                'Filter',
                                style: TextStyle(
                                  fontSize: 16
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 40.0, right: 10.0, left: 10.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: MediaQuery.of(context).size.width  / (MediaQuery.of(context).size.height),
              children: widget.categorySelect.map((value) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageRouteBuilder(
                        pageBuilder: (context, _, __) {
                          return ItemScreen(item: value);
                        }
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.width * 0.6,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Hero(
                            tag: value.imgURL,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                value.imgURL,
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 30.0,
                          left: 20.0,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  value.nameProduk
                                ),
                                SizedBox(height: 10.0,),
                                Text(
                                  'Rp ${formatter.format(value.price)}',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 40.0,
                          right: 10.0,
                          child: IconButton(
                              icon: Icon(
                                value.isFavorite ? Icons.favorite : Icons.favorite_border,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  value.isFavorite = !value.isFavorite;
                                });
                              }
                          ),
                        )
                      ],
                    )
                  ),
                );
              }).toList(),
            ),
          )
        ],
      )
    );
  }
}
