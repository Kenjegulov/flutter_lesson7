import 'package:flutter/material.dart';
import 'package:flutter_lesson7/constants/my_styles.dart';
import 'package:flutter_lesson7/newScaffold.dart';
import 'constants/my_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool test = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyColors.whiteColor,
        title: const Text(
          "Тапшырма 7",
          style: MyTextStyles.appBarTextStyle,
        ),
      ),
      body: const NewBody(),
    );
  }
}
