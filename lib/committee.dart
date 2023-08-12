import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Committee extends StatefulWidget {
  const Committee({Key? key}) : super(key: key);

  @override
  State<Committee> createState() => _CommitteeState();
}

class _CommitteeState extends State<Committee> {
  final committees=[
    {
      "icon":"AIPPM Logo 1.png",
      "desc":"Uniform Civil Code",
      "link":""
    },{
      "icon":"g20.png",
      "desc":"Building a Sustainable and Inclusive Global Economy; Collaborative Strategies for Climate Action, Trade, and Innovation",
      "link":""
    },{
      "icon":"UNHRC 1.png",
      "desc":"Empowerment of Women in developing and undeveloped countries",
      "link":""
    },{
      "icon":"MUN ICON 5.png",
      "desc":"Discussing the militarization of strategic marine regions in relation to United States Convention in Laws of Sea(UNCLOS)",
      "link":""
    },{
      "icon":"IP 2.png",
      "desc":"IPC(INTERNATIONAL PRESS CORPS)",
      "link":""
    },
  ];
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final desktopSize = {
      "Heading": 70.0,
      "SubHeading": 25.0,
      "Emphasis": 17.0,
      "Para": 17.0,
      "Small": 10.0
    };
    final mobileSize = {
      "Heading": 30.0,
      "SubHeading": 10.0,
      "Emphasis": 12.0,
      "Para": 12.0,
      "Small": 10.0
    };
    final List<Widget> widgetList=[];
    final size = sw > 650 ? desktopSize : mobileSize;
    for( var i in committees)
      {
        widgetList.add(Container(
          margin: EdgeInsets.all(sw>650?50:10),
          padding: EdgeInsets.all(sw>650?50:15),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.white.withOpacity(0.3), width: 1),
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage("assets/glass.png"), fit: BoxFit.cover)),
          child:Row(
            children: [
              Flexible(child:Image.asset("assets/${i['icon']!}") ,flex: 1,),
              const SizedBox(width: 20,),
              Flexible(flex: 2,child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(i['desc']!,
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                      letterSpacing: 2,
                      fontSize: size['Emphasis'],
                      fontFamily: 'MontMed',
                    ),
                  ),
                  const SizedBox(height: 20,),
                  InkWell(onTap: (){
                    if (i['link']==""){
                      showTopSnackBar(
                        Overlay.of(context),
                        CustomSnackBar.info(
                          message:
                          "Coming Soon. Stay Tuned!",
                        ),
                      );
                    }
                    else{
                    js.context.callMethod(
                      'open',
                      [i['link']!]);}}, child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white,width: 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("Background Guide",style: TextStyle(
                          color: Colors.white,
                          fontSize: size['Emphasis'],
                          fontFamily: 'Mont',
                        ),),
                        const SizedBox(width: 5,),
                        Image.asset("assets/download.png",height: 20,width: 20,),
                      ],
                    ),
                  ))


                ],
              ) ,),
            ],
          ) ,
        ));
      }
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 1, 154, 255),
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
            image: AssetImage("assets/bg2.png"),
            fit: BoxFit.fill,
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 150,left: 20,right: 20,bottom: 100),
                child: Image.asset("assets/smitmunwhite.png"),
              ),
              InkWell(onTap: (){
                showTopSnackBar(
                  Overlay.of(context),
                  CustomSnackBar.info(
                    message:
                    "Coming Soon. Stay Tuned!",
                  ),
                );                }, child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white,width: 1)
                ),
                child: Center(
                  child: Text("Country Matrix",style: TextStyle(
                    color: Colors.white,
                    fontSize: size['Emphasis'],
                    fontFamily: 'Mont',
                  ),),
                ),
              )),
              Column(
                children: widgetList,
              ),
              const SizedBox(height: 30,),
              Container(
                padding: const EdgeInsets.all(20),
                width: sw,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg1.png"), fit: BoxFit.cover)),
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
