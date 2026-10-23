import 'package:flutter/material.dart';

import './widgets/mountro.dart';

import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:math';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: RandonDaD()),
    );
  }
}

