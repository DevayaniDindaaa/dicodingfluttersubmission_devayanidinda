import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:submissiondevayanidinda/pages/beverage/beverage_page.dart';
import 'package:submissiondevayanidinda/pages/food/food_page.dart';

class FoodBeveragePage extends StatelessWidget {
  const FoodBeveragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return FoodBeveragePageGrid(gridCount:1, size: 20);
          } else if (constraints.maxWidth <= 1200) {
            return FoodBeveragePageGrid(gridCount:1, size: 50);
          } else {
            return FoodBeveragePageGrid(gridCount:2, size: 50);
          }
        },
      ),
    );
  }
}

class FoodBeveragePageGrid extends StatelessWidget {
  final int gridCount;
  final double size;

  FoodBeveragePageGrid({
    required this.gridCount,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: EdgeInsets.all(size),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: size,
          mainAxisSpacing: size,
          children: [
            InkWell(
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FoodPage();
                  }));
                },
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Icon(
                          Icons.fastfood,
                          color: Colors.white,
                          size: 200,
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 50.0),
                        child: Text(
                          'Foods Menu',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BeveragePage();
                }));
              },
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Icon(
                          Icons.emoji_food_beverage,
                          color: Colors.white,
                          size: 200,
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 50.0),
                        child: Text(
                          'Beverages Menu',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}