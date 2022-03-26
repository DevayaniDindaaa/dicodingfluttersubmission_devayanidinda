import 'package:flutter/material.dart';
import 'package:submissiondevayanidinda/models/food_list.dart';

class FoodDetails extends StatelessWidget {
  final FoodList food;

  FoodDetails({required this.food});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return DetailFoodWeb(food: food,);
        } else {
          return DetailFoodMob(food: food,);
        }
      },
    );
  }
}

class DetailFoodMob extends StatelessWidget {
  final FoodList food;

  const DetailFoodMob({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(60, 30), bottomRight: Radius.elliptical(60, 30)),
                  child: Image.asset(food.imageAsset),
                ),
                SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black45,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      )
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Column(
                children: [
                  Text(
                    food.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Indie_Flower',
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 12.0, bottom: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < food.ranking; i++)
                            Icon(Icons.favorite, color: Colors.red,),
                          for (int i = 0; i < 5 - food.ranking; i++)
                            Icon(Icons.favorite_border, color: Colors.red,),
                        ],
                      )
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          food.price,
                          style: TextStyle(
                            fontFamily: 'Red_Hat_Mono',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          color: Colors.black26,
                          child: Text(
                            'before ppn 10%',
                            style: TextStyle(
                              fontFamily: 'Red_Hat_Mono',
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Variant :',
                      style: TextStyle(
                        fontFamily: 'Red_Hat_Mono',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        food.type,
                        style: TextStyle(
                          fontFamily: 'Red_Hat_Mono',
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Size :',
                      style: TextStyle(
                        fontFamily: 'Red_Hat_Mono',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        food.size,
                        style: TextStyle(
                          fontFamily: 'Red_Hat_Mono',
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                food.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Red_Hat_Mono',
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0, bottom: 8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: food.imageUrls.map((url) {
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

class DetailFoodWeb extends StatefulWidget {
  final FoodList food;

  const DetailFoodWeb({required this.food});

  @override
  State<DetailFoodWeb> createState() => _DetailFoodWebState();
}

class _DetailFoodWebState extends State<DetailFoodWeb> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Container(
          width: 1900,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              child: Image.asset(widget.food.imageAsset),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.black45,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_back,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: [
                        Card(
                          child: Container(
                            padding: const EdgeInsets.only(left: 12.0, right: 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  child: Text(
                                    widget.food.name,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Indie_Flower',
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(top: 8.0, left: 12.0, bottom: 12.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        for (int i = 0; i < widget.food.ranking; i++)
                                          Icon(Icons.favorite, color: Colors.red,),
                                        for (int i = 0; i < 5 - widget.food.ranking; i++)
                                          Icon(Icons.favorite_border, color: Colors.red,),
                                      ],
                                    )
                                ),
                                Container(
                                  margin: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Row(
                                          children: [
                                            Text(
                                              widget.food.price,
                                              style: TextStyle(
                                                fontFamily: 'Red_Hat_Mono',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            Container(
                                              color: Colors.black26,
                                              child: Text(
                                                'before ppn 10%',
                                                style: TextStyle(
                                                  fontFamily: 'Red_Hat_Mono',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10.0),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Variant :',
                                          style: TextStyle(
                                            fontFamily: 'Red_Hat_Mono',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5.0),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 20.0),
                                          child: Text(
                                            widget.food.type,
                                            style: TextStyle(
                                              fontFamily: 'Red_Hat_Mono',
                                              fontStyle: FontStyle.italic,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.0),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Size :',
                                          style: TextStyle(
                                            fontFamily: 'Red_Hat_Mono',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5.0),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 20.0),
                                          child: Text(
                                            widget.food.size,
                                            style: TextStyle(
                                              fontFamily: 'Red_Hat_Mono',
                                              fontStyle: FontStyle.italic,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                  child: Text(
                                    widget.food.description,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Red_Hat_Mono',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Scrollbar(
                          isAlwaysShown: true,
                          controller: _scrollController,
                          child: Container(
                            height: 200,
                            padding: const EdgeInsets.only(bottom: 16),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              controller: _scrollController,
                              children: widget.food.imageUrls.map((url) {
                                return Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      url,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}