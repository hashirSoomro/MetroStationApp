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
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 1,
      child: Drawer(
          backgroundColor: AppConstant.appTextColor,
          child: SingleChildScrollView(
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Share Analytics Data",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppConstant.appMainColor,
                            ),
                          ),
                          Switch(
                              value: _switchValue,
                              onChanged: (value) {
                                _switchValue = value;
                              })
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Text(
                          "Help improve our apps and services by automatically sharing usage data and information. Data may include location information but never personally identifiable information."),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, bottom: 12.0),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "Read more...",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppConstant.appMainColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Text(
                        "Version 1.0.0",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, bottom: 6.0),
                      child: Text(
                        "Map Version 1.0.0",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, bottom: 12.0),
                      child: Text(
                        "© Mapway 2024",
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
