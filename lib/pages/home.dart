import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_project/pages/add_device_page.dart';
import 'package:iot_project/pages/create_scene_page.dart';
import 'package:iot_project/pages/scan_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.child_care)),
        actions: [
          PopupMenuButton(
            offset: Offset(0, 40),
            icon: Icon( CupertinoIcons.add_circled_solid),
            onSelected: (value) {
              value==0 ? Get.to(AddDevicePage()) : value == 1 ? Get.to(AddDevicePage()) : Get.to(AddDevicePage());
            },
            itemBuilder: (ctx) => [
              _buildPopupMenuItem('Add Device', 0),
              _buildPopupMenuItem('Create Scene',1),
              _buildPopupMenuItem('Memindai', 2),
              ],
          ),
      
        ],
      ),
      
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Semua perangkat",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.more_horiz)),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(184, 167, 166, 166),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: 100,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.laptop_chromebook),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Laptop Rog G14",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.power_settings_new_outlined, size: 20,),
                              Text("ON"),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Row(
                            children: [
                              Icon(Icons.brightness_5_sharp, size: 20),
                              Text("75%"),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Row(
                            children: [
                              Icon(Icons.battery_3_bar_rounded, size: 20,),
                              Text("50%"),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.power,
                          color: Colors.indigo))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
  PopupMenuItem _buildPopupMenuItem(
      String title,
      int value) {
    return PopupMenuItem(
      padding: EdgeInsets.all(5),
      value: value,
      child: 
       Container(
        width: Get.width/4,
         child: FittedBox(
           child: Row(
            textDirection: TextDirection.ltr,
             children: [
              Icon(value == 0 ? CupertinoIcons.add: value ==1 ? CupertinoIcons.rectangle_stack_badge_plus: CupertinoIcons.barcode_viewfinder),
              SizedBox(width: 10,),
              Text(title,textAlign: TextAlign.left, ),
             ],
           ),
         ),
       ),
    );
}
}
