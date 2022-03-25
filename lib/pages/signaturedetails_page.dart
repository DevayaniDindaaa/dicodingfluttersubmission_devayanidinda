import 'package:flutter/material.dart';
import 'package:submissiondevayanidinda/models/signature_list.dart';

class SignatureDetails extends StatelessWidget {
  final SignatureList signature;

  SignatureDetails({required this.signature});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return DetailSignatureWeb(signature: signature,);
        // } else if (constraints.maxWidth <= 1200) {
        //   return DetailSignatureMob(signature: signature,);
        } else {
          return DetailSignatureMob(signature: signature,);
        }
      },
    );
  }
}

class DetailSignatureMob extends StatelessWidget {
  final SignatureList signature;

  const DetailSignatureMob({required this.signature});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: [
                Image.asset(signature.imageAsset),
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
                    signature.name,
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
                        for (int i = 0; i < signature.ranking; i++)
                          Icon(Icons.favorite, color: Colors.red,),
                        for (int i = 0; i < 5 - signature.ranking; i++)
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
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.list_outlined),
                      SizedBox(width: 8.0),
                      Text(
                        signature.type,
                        style: TextStyle(
                          fontFamily: 'Red_Hat_Mono',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.format_size),
                      SizedBox(width: 8.0),
                      Text(
                        signature.size,
                        style: TextStyle(
                          fontFamily: 'Red_Hat_Mono',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(width: 8.0),
                      Text(
                        signature.price,
                        style: TextStyle(
                          fontFamily: 'Red_Hat_Mono',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                signature.description,
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
                  children: signature.imageUrls.map((url) {
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

class DetailSignatureWeb extends StatefulWidget {
  final SignatureList signature;

  const DetailSignatureWeb({required this.signature});

  @override
  State<DetailSignatureWeb> createState() => _detailSignatureWebState();
}

class _detailSignatureWebState extends State<DetailSignatureWeb> {
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
                              child: Image.asset(widget.signature.imageAsset),
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
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    widget.signature.name,
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
                                        for (int i = 0; i < widget.signature.ranking; i++)
                                          Icon(Icons.favorite, color: Colors.red,),
                                        for (int i = 0; i < 5 - widget.signature.ranking; i++)
                                          Icon(Icons.favorite_border, color: Colors.red,),
                                      ],
                                    )
                                ),
                                Container(
                                  margin: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.list_outlined),
                                          SizedBox(width: 8.0),
                                          Text(
                                            widget.signature.type,
                                            style: TextStyle(
                                              fontFamily: 'Red_Hat_Mono',
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2.0),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.format_size),
                                          SizedBox(width: 8.0),
                                          Text(
                                            widget.signature.size,
                                            style: TextStyle(
                                              fontFamily: 'Red_Hat_Mono',
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2.0),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.monetization_on),
                                          SizedBox(width: 8.0),
                                          Text(
                                            widget.signature.price,
                                            style: TextStyle(
                                              fontFamily: 'Red_Hat_Mono',
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                  child: Text(
                                    widget.signature.description,
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
                              children: widget.signature.imageUrls.map((url) {
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