// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../utils/app-constant.dart';
import 'drawer-tile.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 1,
      child: Drawer(
          backgroundColor: AppConstant.appTextColor,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                child: Image.asset("assets/images/train.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 35, right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppConstant.appSecondaryColor)),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text(
                              "RATE",
                              style: TextStyle(
                                  color: AppConstant.appTextColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.star,
                              color: AppConstant.appTextColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppConstant.appSecondaryColor)),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text(
                              "SHARE",
                              style: TextStyle(
                                  color: AppConstant.appTextColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.share,
                              color: AppConstant.appTextColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              drawerTile(text: "Move to the Mapway App"),
              drawerTile(text: "Get help"),
              drawerTile(text: "Upgrade"),
              drawerTile(text: "Privacy Policy"),
              drawerTile(text: "Terms & Conditions"),
              drawerTile(text: "Acknowledgements"),
            ],
          )),
    );
  }
}
