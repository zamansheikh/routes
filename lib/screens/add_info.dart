import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddInfo extends StatelessWidget {
  const AddInfo({super.key});

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
                    //a search button container
                   
                    
                    //list view container scrollable
                  ],
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}