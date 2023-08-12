import 'package:smitmun/contact.dart';
import 'package:smitmun/home.dart';
import 'gloabal.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:smitmun/about.dart';
import 'committee.dart';
import 'events.dart';
import 'package:smitmun/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  getFiles();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/about": (context) => const About(),
        "/committee": (context) => const Committee(),
        '/contact':(context)=>const Contact(),
        '/events':(context)=>const Events(),
      },
    );
  }
}

