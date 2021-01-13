import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasapp/models/by_gender.dart';
import 'package:jasapp/models/category.dart';
import 'package:jasapp/screens/category_screen.dart';

class CategoryContent extends StatelessWidget {

  ByGender category;

  CategoryContent({
    this.category
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: ListView.builder(
          itemCount: category.category.length,
          itemBuilder: (BuildContext context, int index) {
            Category categori = category.category[index];
            return GestureDetector(
              onTap: (){
                Navigator.push(context, PageRouteBuilder(
                  pageBuilder: (context, _, __) {
                    return CategoryScreen(categorySelect: categori.categorySelected, nameCategory: categori.categoryName);
                  }
                ));
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 10.0,),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      categori.imageURL
                    ),
                    SizedBox(width: 40,),
                    Text(
                      categori.categoryName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                      ),
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
