import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
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
              fit: BoxFit.cover,
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100,),
          Center(child: Image.asset("assets/MUN ICON 5.png",height: sw/3,width: sw/3,),),
          SizedBox(height: 20,),
          Container(
            width: sw,
            child: Container(
              margin: EdgeInsets.all(sw>650?50:10),
              padding: EdgeInsets.all(sw>650?50:15),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.white.withOpacity(0.3), width: 1),
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage("assets/glass.png"), fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Text("ABOUT US",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: size['Heading'],
                    letterSpacing: 2,
                    fontFamily: "MontBold",
                  ),),
                  SizedBox(height: 20,),
                  Text(
                    "The SMIT Model United Nations (MUN) is a prestigious national conference emulating the United Nations' operations. Coordinated by the Secretariat, a dedicated student body from Sikkim Manipal Institute of Technology, it has consistently set high standards since 2013.\nLed by experienced Executive Board Members, the three-day conference features interactive sessions, encouraging intellectual discourse. Amid the pandemic, SMIT MUN transitioned to virtual platforms, notably achieving recognition as Asia's and potentially the world's largest virtual MUN conference in 2021.\nDespite uncertainties, the 6th edition in 2022 successfully hosted 150 delegates across four committees, showcasing the Secretariat's commitment and determination. Through partnerships and cultural events, the conference fosters connections and promotes international cooperation and peace.\nEvery team member of SMIT MUN caters to collective growth, critical thinking, and innovation. We put our effort into fostering and advancing excellence through rigour and pragmatism. \nOur best interest lies in helping our audience broaden their sphere of knowledge and helping them understand issues and voice their opinions. Every opinion matters to us. We try our best to democratize our space. For real and impactful change, we aspire to learn from everyone and want to recognize the potential for better results.",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Mont",
                      letterSpacing: 1,
                      fontSize: size['SubHeading'],
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ),
          ),
              Center(child: Image.asset("assets/smitlogo1.png"),),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.all(sw>650?50:10),
                padding: EdgeInsets.all(sw>650?50:15),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white.withOpacity(0.3), width: 1),
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/glass.png"), fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Text("ABOUT SMIT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size['Heading'],
                        letterSpacing: 2,
                        fontFamily: "MontBold",
                      ),),
                    SizedBox(height: 20,),
                    Text("Established in 1997, SMIT resulted from a partnership between the Sikkim Government and Manipal Education & Medical Group (MEMG). This innovative public-private venture aimed to provide quality education and healthcare, beginning in Sikkim and expanding nationwide. \n\nStarting in a temporary Tadong campus, SMIT moved to its permanent location in Majitar in 1999. As part of the Manipal Group, a prominent education and health services entity, SMIT is a leading technical education institution in East and North-East India. It's approved by AICTE and UGC, holding accreditation from NBA and NAAC.\n\nAIC-SMUTBI (Atal Incubation Centre - Sikkim Manipal University Technology Business Incubation Foundation) is a Tech Incubator supported by Atal Innovation Mission, part of NITI Aayog, Govt of India. With an Rs 8 Crore grant, it fosters startups/entrepreneurs, building an ecosystem for North Eastern Region. Situated at SMIT, it currently incubates companies including Yonika Infotainment, Untapped Technologies, Amazing Adventure, Shoten Group, Gladiolus Language Nectar, Asal, Shield Tech Infosec, and The Chakras Farm.",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Mont",
                        letterSpacing: 1,
                        fontSize: size['SubHeading'],
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(sw>650?50:10),
                padding: EdgeInsets.all(sw>650?20:15),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white.withOpacity(0.3), width: 1),
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/glass.png"), fit: BoxFit.cover)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text("ABOUT FOUNDER",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: size['Heading'],
                            fontFamily: "MontBold",
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(
                      height: 15,
                    ),
                    sw > 650
                        ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                         Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: sw>850?150:100,
                              backgroundImage: AssetImage("assets/tmapai.jpg"),

                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "T.M.A PAI",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Mont",
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Container(
                          width: sw / 2.2,
                          child: Text(
                            "Tonse Madhava Ananth Pai (30 April 1898 – 29 May 1979) was an Indian physician, educator, banker, and philanthropist known for founding Manipal, India's university town.\nHe pioneered private self-financing medical education in India, establishing the Kasturba Medical College in 1953 and Manipal Institute of Technology in 1957. Pai further founded institutions like Manipal College of Dental Sciences, Manipal College of Pharmaceutical Sciences, and Manipal Pre-University College. \nAlongside his brother Upendra Ananth Pai, he initiated Syndicate Bank in Udupi, Karnataka, later headquartered in Manipal and Bangalore. His innovation, the Pigmy Deposit Scheme, gained popularity.",
                            style: TextStyle(
                                fontSize: size['SubHeading'],
                                fontFamily: "Mont",
                                letterSpacing: 1,
                                fontWeight: FontWeight.w200,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )
                        : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 120,
                          backgroundImage: AssetImage("assets/tmapai.jpg"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "T.M.A. PAI",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: "Mont",
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: sw / 1.2,
                          child: Text(
                            "Tonse Madhava Ananth Pai (30 April 1898 – 29 May 1979) was an Indian physician, educator, banker, and philanthropist known for founding Manipal, India's university town.\nHe pioneered private self-financing medical education in India, establishing the Kasturba Medical College in 1953 and Manipal Institute of Technology in 1957. Pai further founded institutions like Manipal College of Dental Sciences, Manipal College of Pharmaceutical Sciences, and Manipal Pre-University College. \nAlongside his brother Upendra Ananth Pai, he initiated Syndicate Bank in Udupi, Karnataka, later headquartered in Manipal and Bangalore. His innovation, the Pigmy Deposit Scheme, gained popularity.",
                            style: TextStyle(
                                fontSize: size['SubHeading'],
                                fontFamily: "Mont",
                                letterSpacing: 1,
                                fontWeight: FontWeight.w200,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
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
