import 'package:flutter/material.dart';
import 'package:submissiondevayanidinda/models/beverage_list.dart';

class BeverageDetails extends StatelessWidget {
  final BeverageList beverage;

  BeverageDetails({required this.beverage});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return DetailBeverageWeb(beverage: beverage,);
        } else {
          return DetailBeverageMob(beverage: beverage,);
        }
      },
    );
  }
}

class DetailBeverageMob extends StatelessWidget {
  final BeverageList beverage;

  const DetailBeverageMob({required this.beverage});

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
                  child: Image.asset(beverage.imageAsset),
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
                    beverage.name,
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
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          beverage.price,
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
                        beverage.type,
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
                        beverage.size,
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
                beverage.description,
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
                  children: beverage.imageUrls.map((url) {
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

class DetailBeverageWeb extends StatefulWidget {
  final BeverageList beverage;

  const DetailBeverageWeb({required this.beverage});

  @override
  State<DetailBeverageWeb> createState() => _DetailBeverageWebState();
}

class _DetailBeverageWebState extends State<DetailBeverageWeb> {
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
                              child: Image.asset(widget.beverage.imageAsset),
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
                                    widget.beverage.name,
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
                                        for (int i = 0; i < widget.beverage.ranking; i++)
                                          Icon(Icons.favorite, color: Colors.red,),
                                        for (int i = 0; i < 5 - widget.beverage.ranking; i++)
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
                                              widget.beverage.price,
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
                                            widget.beverage.type,
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
                                            widget.beverage.size,
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
                                    widget.beverage.description,
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
                              children: widget.beverage.imageUrls.map((url) {
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