import 'package:jasapp/models/best_sellers.dart';
import 'package:jasapp/screens/item_secreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeContent extends StatefulWidget {
  List<BestSellers> bestSellers;

  HomeContent({
    this.bestSellers,
  });

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {

  final formatter = NumberFormat('#,##0', 'en_US');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.lightBlue, Colors.blueAccent]
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                    'images/delivery.png'
                ),
                SizedBox(width: 10.0,),
                Text(
                  'Gratis Ongkir \nSeluruh Indonesia',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Best Sellers',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Lihat semua',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black38
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.bestSellers.length,
              itemBuilder: (context, index) {
                BestSellers bestSeller = widget.bestSellers[index];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageRouteBuilder(
                        pageBuilder: (context, _, __) {
                          return ItemScreen(item: bestSeller);
                        }
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width * 0.5,
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
                            tag: bestSeller.imgURL,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                bestSeller.imgURL,
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
                                    bestSeller.nameProduk
                                ),
                                SizedBox(height: 10.0,),
                                Text(
                                  'Rp ${formatter.format(bestSeller.price)}',
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
                                bestSeller.isFavorite ? Icons.favorite : Icons.favorite_border,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  bestSeller.isFavorite = !bestSeller.isFavorite;
                                });
                              }),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
