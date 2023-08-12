import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
List galleryFiles = [];

void getFiles() async {
  galleryFiles = [];
  final storage = FirebaseStorage.instance.ref("gallery/");
  await storage.listAll().then((value) async {
    for (var i in value.items) {
      galleryFiles.add(await i.getDownloadURL());
    }
  });
}

