import 'dart:async';
import 'dart:js' as js;
import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:latlong2/latlong.dart';
import 'package:smitmun/gloabal.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoading = false;
  GlobalKey contact=GlobalKey();
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      carousel.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOutQuart);
      gallery.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOutQuart);
    });
  }

  final secretariat = [
    {
      "Name": "Biswapriyo Sen",
      "Designation": "Secretary General",
      "image":
      "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/Biswapriyo.png?alt=media&token=35ba93d1-b744-4f7e-8485-4aae150317e9",
      "id":"beingsofoodie"
    },
    {
      "Name": "Raunak Raj",
      "Designation": "Deputy Secretary General",
      "image":
      "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/raunak.jpeg?alt=media&token=4a05cb2d-22f4-4597-b015-cc748a9ea52d",
      "id":"_.rooonak_._"
    },
    {
      "Name": "Srijan Vikram",
      "Designation": "Director General",
      "image":
      "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/srijan.jpeg?alt=media&token=7ff3fd78-6c7f-433a-b6f3-4b86844e3c48",
      "id": "srijanvikram20"
    },
    {
      "Name": "Pema Yangzom Dorji",
      "Designation": "Director of Research",
      "image":
      "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/pema.jpeg?alt=media&token=15b7e213-d011-4bfc-b2f9-3cb75373dd06",
      "id": "real_p.y.d"
    },
    {
      "Name": "Gangotri Bhattacharjee",
      "Designation": "Director of Delegate Affairs",
      "image":
      "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/gangotri.jpg?alt=media&token=9934909e-3039-4855-be39-70edca435365",
      "id":"gangotri_bhattacharjee"
    },
    {
      "Name": "Aryan Lohia",
      "Designation": "Deputy Director of Delegate Affairs",
      "image": "biswapriyo.jpg",
      "id": "kavi_hu_sahab"
    },
    {
      "Name": "Rajshree Kaur",
      "Designation": "Director of PR & Media",
      "image": "biswapriyo.jpg",
      "id": ""
    },
    {
      "Name": "Vileena Rani Goyary",
      "Designation": "Director of PR & Media",
      "image":
      "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/vileena.jpeg?alt=media&token=37a18e93-5b8a-439d-b24e-ae79dbf2b7d7",
      "id":"vi.leen.ah"
    },
    {
      "Name": "Kumar Aakarsh",
      "Designation": "Deputy Director of PR & Media",
      "image":
      "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/akarsh.jpeg?alt=media&token=a6698199-fc94-4bee-a4ae-6461a614a612",
      "id":"_._srivastava_"
    },
    {
      "Name": "Shashvat Raj",
      "Designation": "USG Technical(Lead)",
      "image":
      "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/sashvat.jpeg?alt=media&token=bdf95099-17e6-49d4-a84c-950dd7fd77ac",
      "id":"shasvat_raj"
    },
    {
      "Name": "Sparsh Ranjan",
      "Designation": "USG Technical(Deputy)",
      "image":
      "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/sparsh.jpeg?alt=media&token=ed89e6be-5ca7-4b81-afef-d80b0ef2be96",
      "id":"shrivastavasparsh46"
    },
    {
      "Name": "Arnab Das",
      "Designation": "Deputy Design",
      "image":
      "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/arnab.jpeg?alt=media&token=6b6c7710-8066-4ec4-99cb-261653b733f0",
      "id":"arrrrnavv"
    },
    {
      "Name": "Debasmita Sarma",
      "Designation": "Director of Marketing",
      "image":
      "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/debasmita.jpeg?alt=media&token=c5b1ea70-0e62-4a5c-b36d-faa9e3809064",
      "id":"_._erina_"
    },
    {
      "Name": "Saptarshee Ghosh",
      "Designation": "Director of Marketing",
      "image":
      "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/saptarshee.jpg?alt=media&token=da8569a6-8c8e-4357-a480-2afadda913ac",
      "id":"solivagant1304"
    },
  ];
  final adsaSpeech='''Welcome to the SMIT MUN conference! As Chief Advisor, I'm thrilled by your passion for diplomacy and positive change.

Over the next few days, tackle pressing global issues, embrace diverse perspectives, and foster lasting connections. Diplomacy means challenging ideas, listening actively, and finding sustainable solutions. The virtual setting transcends boundaries, enabling worldwide collaboration.

You're part of a tradition shaping diplomats, leaders, and change-makers. Use this experience to develop skills and a global perspective. Step out of your comfort zones and let's foster camaraderie, respect, and lasting friendships. It's not just about awards, but the positive impact on our shared future. I believe in your abilities and look forward to witnessing your brilliant ideas – you are the future leaders shaping our world for the better.

Thank you for being part of this incredible journey. Let's make this conference memorable, impactful, and a stepping stone toward a brighter tomorrow.

Warm regards,
Dr. Anand. Prakash. Tiwari,
Chief Advisor, SMIT MUN Conference
''';
  final speech =
      "In our evolving world, progress towards prosperity brings both benefits and challenges. While advancements are underway, we must acknowledge the potential consequences and sustainability of our actions. Current times test our resilience: the expansive COVID-19 pandemic, pressing climate change, pollution, declining biodiversity, territorial disputes, and growing prejudice.\n\nGlobal unity, as seen in the United Nations, offers a path forward. Through collaborative efforts, we can address these global concerns, fostering economic, social, and cultural growth. Welcome to Summit Sikkim 7.0, the SMITMUN Model United Nations Conference. This platform empowers emerging leaders, nurturing quick thinking, innovative problem-solving, confidence, and diplomatic skills.\n\nI encourage delegates to embrace the thought-provoking topics. Throughout the conference, may you evolve, gain invaluable insights, and emerge as impactful leaders, poised to make a difference.";
  PageController carousel = PageController();
  PageController gallery = PageController();

  @override
  Widget build(BuildContext context) {
    for(var i in secretariat){
      print(i["image"]);
    }
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
    return isLoading
        ? const Center(
      child: CircularProgressIndicator(),
    )
        : Scaffold(
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: sw > 650 ? sw : sw * 2,
                  width: sw,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/logo1.png"),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: sw / 1.1,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white.withOpacity(0.3),
                                width: 1),
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/glass.png"),
                                fit: BoxFit.cover)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: sw / 2.2,
                              child: FittedBox(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "RISE . LEAD . GROW",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: size['Heading'],
                                            fontFamily: "Mont",
                                            letterSpacing: 1,
                                            color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Join us for the 7th edition of Summit Sikkim ",
                                        style: TextStyle(
                                            fontSize: size['SubHeading'],
                                            fontFamily: "Mont",
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: TimerCountdown(
                                          timeTextStyle: TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 1,
                                            fontSize: size['Heading'],
                                          ),
                                          colonsTextStyle: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 0,
                                              fontWeight: FontWeight.w600),
                                          descriptionTextStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Mont",
                                            letterSpacing: 1,
                                            fontSize: size['SubHeading'],
                                          ),
                                          format: CountDownTimerFormat
                                              .daysHoursMinutesSeconds,
                                          endTime: DateTime(2023, 10, 6),
                                          onEnd: () {
                                            print("Timer finished");
                                          },
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/calendar.png",
                                            height: 20,
                                            width: 20,
                                          ),
                                          Text(" 6 - 7 - 8 October, 2023",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Mont",
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: size['Emphasis']))
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/venue.png",
                                            height: 20,
                                            width: 20,
                                          ),
                                          Text(
                                              " Sikkim Manipal Institute of Technology",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Mont",
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: size['Emphasis']))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Image.asset(
                              "assets/icon1.png",
                              width: sw / 2.3,
                              fit: BoxFit.contain,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 60,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                            child: Text(
                              "Register!",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  // height: sw >650?sw:sw*1.7,
                  // width: sw / 1.1,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                  margin: const EdgeInsets.all(30),

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
                      Text("Message from Associate Director (SA)",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: size['Heading'],
                              fontFamily: "Mont",
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
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 120,
                                backgroundImage: AssetImage("assets/aptiwary.jpg"),

                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Dr. Anand Prakash\nTiwary",
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
                            width: sw / 2,
                            child: Text(
                              adsaSpeech,
                              style: TextStyle(
                                  fontSize: size['Para'],
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
                            backgroundImage: AssetImage("assets/aptiwary.jpg"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Dr. Anand Prakash\nTiwary",
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
                              adsaSpeech,
                              style: TextStyle(
                                  fontSize: size['Para'],
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
                Container(
                  // height: sw >650?sw:sw*1.7,
                  // width: sw / 1.1,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                  margin: const EdgeInsets.all(30),

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
                      Text("Message from Secretary General",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: size['Heading'],
                              fontFamily: "Mont",
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
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                  radius: 120,
                                  backgroundImage: NetworkImage(
                                      "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/biswapriyo.jpeg?alt=media&token=3be8afeb-2497-453d-bcc2-d425679667db")),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Biswapriyo\nSen",
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
                            width: sw / 2,
                            child: Text(
                              speech,
                              style: TextStyle(
                                  fontSize: size['Para'],
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
                              backgroundImage: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/concrete-crow-395518.appspot.com/o/biswapriyo.jpeg?alt=media&token=3be8afeb-2497-453d-bcc2-d425679667db")),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Biswapriyo Sen",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
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
                              speech,
                              style: TextStyle(
                                  fontSize: size['Para'],
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
                Container(
                  width: sw,
                  height: sw > 650 ? 700 : 400,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Meet the Secretariat",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Mont",
                              fontSize: size['Heading'])),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sw > 650
                              ? IconButton(
                              onPressed: () {
                                carousel.previousPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOutQuart);
                              },
                              icon: Image.asset(
                                "assets/right.png",
                                height: 50,
                                width: 50,
                              ))
                              : Container(),
                          sw > 800
                              ? Container(
                            height: 400,
                            width: sw / 1.1 - 100,
                            child: PageView.builder(
                                reverse: true,
                                controller: carousel,
                                itemBuilder: (context, itemIndex) {
                                  itemIndex = itemIndex % 14;
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
                                            image:
                                            AssetImage("assets/glass.png"),
                                            fit: BoxFit.cover)),
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,

                                      children: [
                                        CircleAvatar(
                                          radius: 150,
                                          backgroundImage:
                                          const AssetImage("assets/pfp.png"),
                                          foregroundImage: NetworkImage(
                                              secretariat[itemIndex]
                                              ['image']!),
                                        ),
                                        SizedBox(width: 40,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            FittedBox(
                                              child: Text(
                                                secretariat[itemIndex]
                                                ['Name']!,
                                                softWrap: true,
                                                style:  TextStyle(
                                                    letterSpacing: 2,
                                                    fontSize: sw/40,
                                                    fontWeight:
                                                    FontWeight.w700,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            FittedBox(
                                              fit: BoxFit.contain,
                                              child: Text(
                                                secretariat[itemIndex]
                                                ['Designation']!,
                                                style:  TextStyle(
                                                    fontSize: sw/50,
                                                    letterSpacing: 1,
                                                    fontWeight:
                                                    FontWeight.w300,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            IconButton(
                                              onPressed: () => js.context.callMethod(
                                                  'open',
                                                  ['https://instagram.com/smitmun']),
                                              icon:  Image.asset("assets/insta.png"),
                                              iconSize: 40,
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  );
                                }),
                          )
                              : Container(
                            height: 300,
                            width: sw / 1.1 - 35,
                            child: PageView.builder(
                                controller: carousel,
                                reverse: true,
                                itemBuilder: (context, realIndex) {
                                  realIndex = realIndex % 14;
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
                                            image:
                                            AssetImage("assets/glass.png"),
                                            fit: BoxFit.cover)),
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 100,
                                          backgroundImage:
                                          const AssetImage("assets/pfp.png"),
                                          foregroundImage: NetworkImage(
                                              secretariat[realIndex]
                                              ['image']!),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            secretariat[realIndex]
                                            ['Name']!,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                letterSpacing: 2,
                                                fontWeight:
                                                FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            secretariat[realIndex]
                                            ['Designation']!,
                                            style: const TextStyle(
                                                fontSize: 10,
                                                letterSpacing: 2,
                                                fontWeight:
                                                FontWeight.w300,
                                                color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          sw > 650
                              ? IconButton(
                              enableFeedback: false,
                              onPressed: () {
                                carousel.nextPage(
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
                      )
                    ],
                  ),
                ),
                Container(
                  width: sw,
                  height: sw > 650 ? 700 : 400,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Gallery",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Mont",
                              letterSpacing: 1,
                              fontSize: size['Heading'])),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
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
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
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
                                    options:  const MapOptions(
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
                            key: contact,
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
                            icon:  Image.asset("assets/insta.png"),
                            iconSize: 50,
                          ),
                          const SizedBox(
                            width: 10,
                          ),IconButton(
                            onPressed: () => js.context.callMethod(
                                'open',
                                ['https://m.facebook.com/profile.php?id=61550044477354&mibextid=2JQ9oc']),
                            icon:  Image.asset("assets/fblogo.png"),
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
                            icon:  Image.asset("assets/Vector.png"),
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
                            icon:  Image.asset("assets/insta.png"),
                            iconSize: 50,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () => js.context.callMethod(
                                'open',
                                ['https://m.facebook.com/profile.php?id=61550044477354&mibextid=2JQ9oc']),
                            icon:  Image.asset("assets/fblogo.png"),
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
                            icon:  Image.asset("assets/Vector.png"),
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
        ));
  }
}