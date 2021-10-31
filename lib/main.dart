import 'package:flutter/material.dart';
import 'package:inspiration_app/image/image_json.dart';
import 'package:inspiration_app/theme/bgColor.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgWhite,
      appBar: AppBar(
        backgroundColor: bgLightWhite,
        // ignore: deprecated_member_use
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          splashColor: spColor,
          splashRadius: 25,
          icon: Icon(
            Icons.menu,
            color: bgBlack,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
      body: getBody(size),
    );
  }

  Widget getBody(size) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              width: size.width,
              color: bgLightWhite,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '\tFind Your',
                        style: TextStyle(
                          color: textBlack,
                          fontFamily: 'RobotoMono',
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                        ),
                        children: [
                          TextSpan(
                            text: ' Passion',
                            style: TextStyle(
                              fontSize: 35,
                              fontFamily: 'RobotoMono',
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width * 5 / 6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: bgGrey,
                          ),
                          child: TextField(
                            cursorColor: bgBlack.withOpacity(0.5),
                            style: TextStyle(
                              color: bgBlack.withOpacity(0.8),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: bgBlack.withOpacity(0.5),
                              ),
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: bgBlack.withOpacity(0.5),
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   child: Text(
                  //     "Promotion",
                  //     style: TextStyle(
                  //       fontSize: 20,
                  //       fontFamily: 'Poppins',
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child: promoCard(),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Container(
                      height: 75,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: bgCard2.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(3, 0),
                          )
                        ],
                        color: bgCard,
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: NetworkImage(imageBg),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child: promo2Card(),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget promoCard() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(imageUrl.length, (index) {
        return Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: AspectRatio(
            aspectRatio: 2.5 / 3,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: bgCard.withOpacity(0.8),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  )
                ],
                color: bgCard,
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: NetworkImage(imageUrl[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    stops: [0.1, 0.5],
                    colors: [
                      bgBlack.withOpacity(0.5),
                      bgBlack.withOpacity(0.1),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget promo2Card() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(imgUrl.length, (index) {
        return Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: AspectRatio(
            aspectRatio: 2.5 / 3,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: bgCard3.withOpacity(0.6),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  )
                ],
                color: bgCard,
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: NetworkImage(imgUrl[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    stops: [0.1, 0.5],
                    colors: [
                      bgBlack.withOpacity(0.5),
                      bgBlack.withOpacity(0.1),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
