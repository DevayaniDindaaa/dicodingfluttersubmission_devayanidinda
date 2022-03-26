import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:submissiondevayanidinda/models/beverage_list.dart';
import 'package:submissiondevayanidinda/pages/beverage/beveragedetails_page.dart';

class BeveragePage extends StatelessWidget {
  const BeveragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beverage Menu',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Gochi_Hand',
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return BeveragePageGrid(gridCount:1);
          } else if (constraints.maxWidth <= 1200) {
            return BeveragePageGrid(gridCount:2);
          } else {
            return BeveragePageGrid(gridCount:4);
          }
        },
      ),
    );
  }
}

class BeveragePageGrid extends StatelessWidget {
  final int gridCount;

  BeveragePageGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: beverageList.map((beverage) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BeverageDetails(beverage: beverage,);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        beverage.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        beverage.name,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Indie_Flower'
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        beverage.price,
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Red_Hat_Mono'
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                        padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
                        child: Row(
                          children: [
                            for (int i = 0; i < beverage.ranking; i++)
                              Icon(Icons.favorite, color: Colors.red,),
                            for (int i = 0; i < 5 - beverage.ranking; i++)
                              Icon(Icons.favorite_border, color: Colors.red,),
                          ],
                        )
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}