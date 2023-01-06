import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 56, 219),
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            FluentSystemIcons.ic_fluent_drive_mode_filled,
                            size: 30,
                            color: Colors.white,
                          ),
                          Gap(10),
                          Expanded(
                              child: Text(
                            "Routes",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                          Icon(
                            FluentSystemIcons
                                .ic_fluent_channel_notifications_filled,
                            size: 30,
                            color: Colors.white,
                          ),
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, 10),
                            color: Colors.black12,
                            blurRadius: 20,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Placeholder(
                            fallbackWidth:
                                (MediaQuery.of(context).size.width) / 2 - 20,
                          ),
                          Placeholder(
                            fallbackWidth:
                                (MediaQuery.of(context).size.width) / 2 - 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //a search button container
                    Container(
                      height: 55,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[200],
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(5, 10),
                            color: Colors.black12,
                            blurRadius: 20,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        size: 50,
                      ),
                    ), //search button end
                    const SizedBox(
                      height: 20,
                    ),
                    //list view container scrollable
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: ListView(children: const [
                      Placeholder(
                        
                      ),
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
