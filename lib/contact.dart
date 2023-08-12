import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'dart:js' as js;

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final destopSize = {
      "Heading": 30.0,
      "SubHeading": 18.0,
      "Emphasis": 15.0,
      "Para": 17.0,
      "Small": 10.0
    };
    final mobileSize = {
      "Heading": 20.0,
      "SubHeading": 10.0,
      "Emphasis": 15.0,
      "Para": 12.0,
      "Small": 10.0
    };
    final size = sw > 650 ? destopSize : mobileSize;
    return Scaffold(
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
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg2.png"),
              fit: BoxFit.fill,
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 100),
                padding: const EdgeInsets.all(10),
                width: sw / 1.1,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white.withOpacity(0.3), width: 1),
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/glass.png"), fit: BoxFit.cover)),
                child: sw > 650
                    ? Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: sw / 2.2,
                          child: Row(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(30),
                                ),
                                height: sw / 6,
                                width: sw / 6,
                                child: FlutterMap(
                                  options:   MapOptions(
                                    maxZoom: 15.2,
                                    minZoom: 10.2,
                                    initialCenter: LatLng(
                                        27.182629839840633,
                                        88.50179720955025),
                                    initialZoom: 15.2,
                                  ),
                                  nonRotatedChildren: [
                                    RichAttributionWidget(
                                      attributions: [
                                        TextSourceAttribution(
                                          'OpenStreetMap contributors',
                                          onTap: () => js.context
                                              .callMethod('open', [
                                            'https://openstreetmap.org/copyright'
                                          ]),
                                        )
                                      ],
                                    ),
                                  ],
                                  children: [
                                    TileLayer(
                                      urlTemplate:
                                      'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                      userAgentPackageName:
                                      'com.example.app',
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text("Address",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: "Mont",
                                          letterSpacing: 1,
                                          fontSize: size['Heading'])),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "Sikkim Manipal Institute\nof Technology\nMajitar, Rangpo\nEast Sikkim\nPIN - 737136",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Mont",
                                          letterSpacing: 1,
                                          fontSize:
                                          size['SubHeading']))
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: sw / 2.6,
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.end,
                            children: [
                              Text("Contact Us",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: "Mont",
                                      letterSpacing: 1,
                                      fontSize: size['Heading'])),
                              const SizedBox(
                                height: 10,
                              ),
                              Text("smitmuns@gmail.com",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: "Mont",
                                      letterSpacing: 1,
                                      fontSize: size['Para'])),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                  "Biswapriyo Sen\nSecretary General\n+91 6290864849",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: "Mont",
                                      letterSpacing: 1,
                                      fontSize: size['SubHeading'])),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Gangotri Bhattacharjee\nDirector of Delegate Affairs\n+91 6295427421",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: "Mont",
                                    letterSpacing: 1,
                                    fontSize: size['SubHeading']),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => js.context.callMethod(
                              'open',
                              ['https://instagram.com/smitmun']),
                          icon: Image.asset("assets/insta.png"),
                          iconSize: 50,
                        ),
                        const SizedBox(
                          width: 10,
                        ),IconButton(
                          onPressed: () => js.context.callMethod(
                              'open',
                              ['https://m.facebook.com/profile.php?id=61550044477354&mibextid=2JQ9oc']),
                          icon: Image.asset("assets/fblogo.png"),
                          iconSize: 50,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: () => js.context.callMethod(
                              'open', [
                            'https://openstreetmap.org/copyright'
                          ]),
                          icon: Image.asset("assets/Vector.png"),
                          iconSize: 50,
                        ),
                      ],
                    )
                  ],
                )
                    : Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: 150,
                          width: 150,
                          child: FlutterMap(
                            options: const MapOptions(
                              maxZoom: 15.2,
                              minZoom: 10.2,
                              initialCenter: LatLng(
                                  27.182629839840633,
                                  88.50179720955025),
                              initialZoom: 15.2,
                            ),
                            children: [
                              TileLayer(
                                urlTemplate:
                                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                userAgentPackageName:
                                'com.example.app',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text("Address",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: "Mont",
                                    letterSpacing: 1,
                                    fontSize: size["Heading"])),
                            const SizedBox(
                              height: 10,
                            ),
                            FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                  "Sikkim Manipal\nInstitute\nof Technology\nMajitar, Rangpo\nEast Sikkim\nPIN - 737136",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Mont",
                                      letterSpacing: 1,
                                      fontSize:
                                      (size['Small'])! - 2.0)),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => js.context.callMethod(
                              'open',
                              ['https://instagram.com/smitmun']),
                          icon: Image.asset("assets/insta.png"),
                          iconSize: 50,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: () => js.context.callMethod(
                              'open',
                              ['https://m.facebook.com/profile.php?id=61550044477354&mibextid=2JQ9oc']),
                          icon: Image.asset("assets/fblogo.png"),
                          iconSize: 50,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: () => js.context.callMethod(
                              'open', [
                            'https://openstreetmap.org/copyright'
                          ]),
                          icon: Image.asset("assets/Vector.png"),
                          iconSize: 50,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Email us at -",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Mont",
                            letterSpacing: 1,
                            fontSize: 14)),
                    const Text("smitmuns@gmail.com",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Mont",
                            letterSpacing: 1,
                            fontSize: 18)),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Or",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Mont",
                            letterSpacing: 1,
                            fontSize: 14)),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Biswapriyo Sen",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Mont",
                          letterSpacing: 1,
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      "Secretary General\n+91 6290864849",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Mont",
                          letterSpacing: 1,
                          fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Gangotri Bhattacharjee",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Mont",
                          letterSpacing: 1,
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      "Director of Delegate Affairs\n+91 6295427421",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Mont",
                          letterSpacing: 1,
                          fontSize: 14),
                      textAlign: TextAlign.center,
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
