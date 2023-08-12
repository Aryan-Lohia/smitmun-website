import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:smitmun/gloabal.dart';
import 'dart:js' as js;

class Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    PageController gallery=PageController();
    PageController gallery1=PageController();
    final destopSize = {
      "Heading": 70.0,
      "SubHeading": 25.0,
      "Emphasis": 15.0,
      "Para": 17.0,
      "Small": 10.0
    };
    final mobileSize = {
      "Heading": 30.0,
      "SubHeading": 10.0,
      "Emphasis": 15.0,
      "Para": 12.0,
      "Small": 10.0
    };
    final size = sw > 650 ? destopSize : mobileSize;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AdaptiveNavBar(
        onTitleTapped: (){                Navigator.pushNamed(context, "/");
        },
        elevation: 10,
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        screenWidth: sw,
        leadingWidth: sw / 2.5,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: (){                Navigator.pushNamed(context, "/");
            },
            child: Image.asset(
              "assets/smitmunwhite.png",
              fit: BoxFit.contain,
              width: sw / 5,
            ),
          ),
        ),
        title: const Text(""),
        navBarItems: [
          NavBarItem(
            text: "Home",
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          NavBarItem(
            text: "About",
            onTap: () {
              Navigator.pushNamed(context, "/about");
            },
          ),
          NavBarItem(
            text: "Committee",
            onTap: () {
              Navigator.pushNamed(context, "/committee");
            },
          ),
          NavBarItem(
            text: "Events",
            onTap: () {
              Navigator.pushNamed(context, "/events");
            },
          ),
          NavBarItem(
            text: "Contact",
            onTap: () {
              Navigator.pushNamed(context, "/contact");

            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg1.png"),
              fit: BoxFit.cover,
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: sw>650?50:0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 50,),
                    Text("EVENTS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size['Heading'],
                        letterSpacing: 5,
                        fontFamily: "MontBold",
                      ),),

                    SizedBox(
                        width: sw/2,
                        child: Image.asset("assets/summit.png",fit: BoxFit.contain,)),
                    Container(
                      width: sw,
                      height: sw > 650 ? 700 : 400,
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sw > 650
                              ? IconButton(
                              onPressed: () {
                                gallery.previousPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOutQuart);
                              },
                              enableFeedback: false,
                              icon: Image.asset(
                                "assets/right.png",
                                height: 50,
                                width: 50,
                              ))
                              : Container(),
                          sw > 650
                              ? Container(
                            height: 500,
                            width: sw / 1.1 - 150,
                            child: PageView.builder(
                                controller: gallery,
                                itemBuilder: (context, realIndex) {
                                  realIndex =
                                      realIndex % galleryFiles.length;
                                  return Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.3),
                                              width: 1),
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "glass.png"),
                                              fit: BoxFit.cover)),
                                      padding: const EdgeInsets.all(20),
                                      child: Image.network(
                                        galleryFiles[realIndex],
                                        fit: BoxFit.cover,
                                      ));
                                }),
                          )
                              : Container(
                            height: 250,
                            width: sw / 1.1 - 20,
                            child: PageView.builder(
                                controller: gallery,
                                itemBuilder: (context, realIndex) {
                                  realIndex =
                                      realIndex % galleryFiles.length;
                                  return Container(
                                      margin:
                                      const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.3),
                                              width: 1),
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "glass.png"),
                                              fit: BoxFit.cover)),
                                      padding: const EdgeInsets.all(20),
                                      child: Image.network(
                                        galleryFiles[realIndex],
                                        fit: BoxFit.cover,
                                      ));
                                }),
                          ),
                          sw > 650
                              ? IconButton(
                              enableFeedback: false,
                              onPressed: () {
                                gallery.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOutQuart);
                              },
                              icon: Image.asset(
                                "assets/left.png",
                                height: 50,
                                width: 50,
                              ))
                              : Container(),
                        ],
                      ),
                    ),
                    SizedBox(
                        width: sw/2,
                        child: Image.asset("assets/trifecta.png",fit: BoxFit.contain,)),
                    Container(
                      width: sw,
                      height: sw > 650 ? 700 : 400,
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sw > 650
                              ? IconButton(
                              onPressed: () {
                                gallery.previousPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOutQuart);
                              },
                              enableFeedback: false,
                              icon: Image.asset(
                                "assets/right.png",
                                height: 50,
                                width: 50,
                              ))
                              : Container(),
                          sw > 650
                              ? Container(
                            height: 500,
                            width: sw / 1.1 - 150,
                            child: PageView.builder(
                                controller: gallery,
                                itemBuilder: (context, realIndex) {
                                  realIndex =
                                      realIndex % galleryFiles.length;
                                  return Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.3),
                                              width: 1),
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "glass.png"),
                                              fit: BoxFit.cover)),
                                      padding: const EdgeInsets.all(20),
                                      child: Image.network(
                                        galleryFiles[realIndex],
                                        fit: BoxFit.cover,
                                      ));
                                }),
                          )
                              : Container(
                            height: 250,
                            width: sw / 1.1 - 20,
                            child: PageView.builder(
                                controller: gallery,
                                itemBuilder: (context, realIndex) {
                                  realIndex =
                                      realIndex % galleryFiles.length;
                                  return Container(
                                      margin:
                                      const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.3),
                                              width: 1),
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "glass.png"),
                                              fit: BoxFit.cover)),
                                      padding: const EdgeInsets.all(20),
                                      child: Image.network(
                                        galleryFiles[realIndex],
                                        fit: BoxFit.cover,
                                      ));
                                }),
                          ),
                          sw > 650
                              ? IconButton(
                              enableFeedback: false,
                              onPressed: () {
                                gallery.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOutQuart);
                              },
                              icon: Image.asset(
                                "assets/left.png",
                                height: 50,
                                width: 50,
                              ))
                              : Container(),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                padding: const EdgeInsets.all(20),
                width: sw,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg2.png"), fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sw < 650
                        ? const Center(
                      child: Text(
                        "Credits",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontFamily: "Mont",
                            letterSpacing: 1,
                            fontSize: 20),
                      ),
                    )
                        : Container(),
                    const SizedBox(
                      height: 10,
                    ),
                    sw < 650
                        ? Container(
                      width: sw / 1.1,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () => js.context.callMethod(
                                  'open', [
                                'https://instagram.com/aryanlohiapvt'
                              ]),
                              child: Row(
                                children: [
                                  const Text(
                                    "Aryan Lohia",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Mont",
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Image.asset(
                                    "assets/insta.png",
                                    height: 15,
                                    width: 15,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () => js.context.callMethod(
                                  'open', [
                                'https://instagram.com/arrrrnavv'
                              ]),
                              child: Row(
                                children: [
                                  const Text(
                                    "Arnab Das",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Mont",
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Image.asset(
                                    "assets/insta.png",
                                    height: 15,
                                    width: 15,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () => js.context.callMethod(
                                  'open', [
                                'https://instagram.com/shrivastavasparsh46'
                              ]),
                              child: Row(
                                children: [
                                  const Text(
                                    "Sparsh Ranjan",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Mont",
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Image.asset(
                                    "assets/insta.png",
                                    height: 15,
                                    width: 15,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                        : Container(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: sw / 1.3,
                              height: 100,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/smitlogo1.png",
                                    width: sw / 3,
                                    height: 100,
                                  ),
                                  Image.asset(
                                    "assets/g20.png",
                                    width: sw / 5,
                                    height: 100,
                                  ),
                                  Image.asset(
                                    "assets/AKAM 1.png",
                                    width: sw / 5,
                                    height: 100,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                height: 100,
                                width: sw / 1.3,
                                child: Image.asset(
                                  "assets/LOGOSMITMUN1.png",
                                  fit: BoxFit.contain,
                                ))
                          ],
                        ),
                        sw > 650 ? const Spacer() : Container(),
                        sw > 650
                            ? Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Credits:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "Mont",
                                  letterSpacing: 1,
                                  fontSize: sw / 40),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () => js.context.callMethod(
                                  'open', [
                                'https://openstreetmap.org/copyright'
                              ]),
                              child: Row(
                                children: [
                                  Text(
                                    "Aryan Lohia",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Mont",
                                        letterSpacing: 1,
                                        fontSize: sw / 60),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Image.asset(
                                    "assets/insta.png",
                                    height: 15,
                                    width: 15,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () => js.context.callMethod(
                                  'open', [
                                'https://openstreetmap.org/copyright'
                              ]),
                              child: Row(
                                children: [
                                  Text(
                                    "Arnab Das",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Mont",
                                        letterSpacing: 1,
                                        fontSize: sw / 60),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Image.asset(
                                    "assets/insta.png",
                                    height: 15,
                                    width: 15,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () => js.context.callMethod(
                                  'open', [
                                'https://openstreetmap.org/copyright'
                              ]),
                              child: Row(
                                children: [
                                  Text(
                                    "Sparsh Ranjan",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Mont",
                                        letterSpacing: 1,
                                        fontSize: sw / 60),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Image.asset(
                                    "assets/insta.png",
                                    height: 15,
                                    width: 15,
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                            : Container()
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text("2023 SMITMUN. All Rights Reserved",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Mont",
                              letterSpacing: 4,
                              fontSize: size['SubHeading'])),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
