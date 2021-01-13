import 'package:jasapp/models/category_selected.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  var item;

  ItemScreen({
    this.item
  });

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  String selectedValue = '';

  @override
  Widget build(BuildContext context) {
    print(selectedValue);
    return Scaffold(
      bottomSheet: Container(
        padding: EdgeInsets.all(10.0),
        height: MediaQuery.of(context).size.height * 0.1,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.share, size: 20,),
                  onPressed: () {},
                ),
                Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 16
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Center(
                child: Text(
                  'Pesan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
            )
          ],
        )
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),

                ],
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                height: MediaQuery.of(context).size.height * 0.72,
                width: double.infinity,
                child:  Stack(
                  children: <Widget>[
                    Hero(
                      tag: widget.item.imgURL,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          widget.item.imgURL,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                          height: MediaQuery.of(context).size.height * 0.72,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30.0,
                      left: 30.0,
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.15,
                        width: MediaQuery.of(context).size.width * 0.15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                        child: IconButton(
                            icon: Icon(
                              widget.item.isFavorite ? Icons.favorite : Icons.favorite_border,
                              color: Colors.black,
                              size: 30.0,
                            ),
                            onPressed: () {
                              setState(() {
                                widget.item.isFavorite = !widget.item.isFavorite;
                              });
                            }
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(40.0),
                margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 80),
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'images/hanger.png',
                            width: MediaQuery.of(context).size.width * 0.1,
                          ),
                          SizedBox(width: 10.0,),
                          Text(
                            'Pilih ukuran baju',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: GestureDetector(
                              onTap: () => setSize('XS'),
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Center(
                                  child: Text(
                                    'XS',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: selectedValue.trim() == 'XS'? Colors.black : Colors.black12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: GestureDetector(
                              onTap: () => setSize('S'),
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Center(
                                  child: Text(
                                    'S',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: selectedValue.trim() == 'S'? Colors.black : Colors.black12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: GestureDetector(
                              onTap: () => setSize('L'),
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Center(
                                  child: Text(
                                    'L',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: selectedValue.trim() == 'L'? Colors.black : Colors.black12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: GestureDetector(
                              onTap: () => setSize('XL'),
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Center(
                                  child: Text(
                                    'XL',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: selectedValue.trim() == 'XL'? Colors.black : Colors.black12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void setSize(String value) {
    setState(() {
      selectedValue = value;
    });
  }
}
