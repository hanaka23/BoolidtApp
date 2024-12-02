import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 必要な初期化を行う
  await Firebase.initializeApp(); // Firebaseの初期化
  runApp(
    // Riverpodでデータを受け渡しできる状態にする
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "booklist",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book List"),
      ),
      body: Center(
        child: Text("you push button"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
