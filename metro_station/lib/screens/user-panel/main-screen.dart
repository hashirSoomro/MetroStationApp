// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../utils/app-constant.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppConstant.appName,
          style: TextStyle(color: AppConstant.appTextColor),
        ),
        centerTitle: true,
        backgroundColor: AppConstant.appMainColor,
      ),
    );
  }
}
