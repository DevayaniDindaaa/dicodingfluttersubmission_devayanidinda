import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:submissiondevayanidinda/pages/foodbeverage_page.dart';
import 'package:submissiondevayanidinda/pages/signature/signature_page.dart';
import 'package:submissiondevayanidinda/utils/urlpage_launcher.dart';
import 'package:submissiondevayanidinda/utils/webview_page.dart';
import 'package:maps_launcher/maps_launcher.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return LandingPageMob();
          } else if (constraints.maxWidth <= 1200) {
            return LandingPageTab();
          } else {
            return LandingPageDesk();
          }
        },
      ),
    );
  }
}

class LandingPageMob extends StatelessWidget {
  const LandingPageMob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Stack(
      children: [
        Container(
          height: mediaQuery.size.height - mediaQuery.padding.top,
          width: mediaQuery.size.width,
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/front_mob.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 100, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 270,
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SignaturePage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey, //background color of button
                          side: BorderSide(width:3, color:Colors.black), //border width and color
                          elevation: 3, //elevation of button
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(30)
                          ),
                          padding: EdgeInsets.all(5) //content padding inside button
                      ),
                      child: Text(
                        "Signature Menu",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Gochi_Hand',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return FoodBeveragePage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey, //background color of button
                          side: BorderSide(width:3, color:Colors.black), //border width and color
                          elevation: 3, //elevation of button
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(30)
                          ),
                          padding: EdgeInsets.all(5) //content padding inside button
                      ),
                      child: Text(
                        "Food & Beverages",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Gochi_Hand',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        MapsLauncher.launchCoordinates(
                            -6.8959237, 107.6336893, 'Eat Play Love (cafe & eatery)');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                        side: BorderSide(width:3, color:Colors.black),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        padding: EdgeInsets.all(5),
                      ),
                      child: Text(
                        "Our's Location",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Gochi_Hand',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        _buildSosmedButton(context),
      ],
    );
  }

  Align _buildSosmedButton(BuildContext context){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WebViewContainer('https://www.facebook.com/dicoding/')));},
              icon: FaIcon(
                FontAwesomeIcons.facebook,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WebViewContainer('https://www.instagram.com/dicoding/?hl=en')));},
              icon: FaIcon(
                FontAwesomeIcons.instagram,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WebViewContainer('https://www.dicoding.com/')));},
              icon: FaIcon(
                FontAwesomeIcons.google,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LandingPageTab extends StatelessWidget {
  const LandingPageTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Stack(
        children: [
          Container(
            height: mediaQuery.size.height - mediaQuery.padding.top,
            width: mediaQuery.size.width,
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/front_tab.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 100, 10, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 380,
                    ),
                    SizedBox(
                      height: 60,
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return SignaturePage();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey, //background color of button
                            side: BorderSide(width:3, color:Colors.black), //border width and color
                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder( //to set border radius to button
                                borderRadius: BorderRadius.circular(30)
                            ),
                            padding: EdgeInsets.all(5) //content padding inside button
                        ),
                        child: Text(
                          "Signature Menu",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Gochi_Hand',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 60,
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return FoodBeveragePage();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey, //background color of button
                            side: BorderSide(width:3, color:Colors.black), //border width and color
                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder( //to set border radius to button
                                borderRadius: BorderRadius.circular(30)
                            ),
                            padding: EdgeInsets.all(5) //content padding inside button
                        ),
                        child: Text(
                          "Food & Beverages",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Gochi_Hand',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 60,
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          MapsLauncher.launchCoordinates(
                              -6.8959237, 107.6336893, 'Eat Play Love (cafe & eatery');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey,
                          side: BorderSide(width:3, color:Colors.black),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          padding: EdgeInsets.all(5),
                        ),
                        child: Text(
                          "Our's Location",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Gochi_Hand',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _buildSosmedButton(context),
        ],
    );
  }

  Align _buildSosmedButton(BuildContext context){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                LaunchURL.openURL('https://www.facebook.com/dicoding/');},
              icon: FaIcon(
                FontAwesomeIcons.facebook,
                size: 30,
              ),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                LaunchURL.openURL('https://www.instagram.com/dicoding/?hl=en');},
              icon: FaIcon(
                FontAwesomeIcons.instagram,
                size: 30,
              ),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                LaunchURL.openURL('https://www.dicoding.com/');},
              icon: FaIcon(
                FontAwesomeIcons.google,
                size: 30,
              ),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  // Widget _getWeb(String htmlId, String link) {
  //   // ignore: undefined_prefixed_name
  //   ui.platformViewRegistry.registerViewFactory(
  //       htmlId,
  //           (int viewId) => IFrameElement()
  //         ..style.width = '100%'
  //         ..style.height = '100%'
  //         ..src = link.toString()
  //         ..style.border = 'none');
  //
  //   return HtmlElementView(viewType: htmlId);
  // }
}

class LandingPageDesk extends StatelessWidget {
  const LandingPageDesk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Stack(
      children: [
        Container(
          height: mediaQuery.size.height - mediaQuery.padding.top,
          width: mediaQuery.size.width,
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/front_web.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 100, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 420,
                  ),
                  SizedBox(
                    height: 60,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SignaturePage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey, //background color of button
                          side: BorderSide(width:3, color:Colors.black), //border width and color
                          elevation: 3, //elevation of button
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(30)
                          ),
                          padding: EdgeInsets.all(5) //content padding inside button
                      ),
                      child: Text(
                        "Signature Menu",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Gochi_Hand',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 60,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return FoodBeveragePage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey, //background color of button
                          side: BorderSide(width:3, color:Colors.black), //border width and color
                          elevation: 3, //elevation of button
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(30)
                          ),
                          padding: EdgeInsets.all(5) //content padding inside button
                      ),
                      child: Text(
                        "Food & Beverages",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Gochi_Hand',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 60,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {
                        MapsLauncher.launchCoordinates(
                            -6.8959237, 107.6336893, 'Eat Play Love (cafe & eatery');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                        side: BorderSide(width:3, color:Colors.black),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        padding: EdgeInsets.all(5),
                      ),
                      child: Text(
                        "Our's Location",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Gochi_Hand',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        _buildSosmedButton(context),
      ],
    );
  }

  Align _buildSosmedButton(BuildContext context){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                LaunchURL.openURL('https://www.facebook.com/dicoding/');},
              icon: FaIcon(
                FontAwesomeIcons.facebook,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                LaunchURL.openURL('https://www.instagram.com/dicoding/?hl=en');},
              icon: FaIcon(
                FontAwesomeIcons.instagram,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                LaunchURL.openURL('https://www.dicoding.com/');},
              icon: FaIcon(
                FontAwesomeIcons.google,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
