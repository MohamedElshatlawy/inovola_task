import 'package:flutter/material.dart';
import 'package:task/view/home_view.dart';

main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'cairo'
      ),
      home: HomeView(),
    )
  );
}