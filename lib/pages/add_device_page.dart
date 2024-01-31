import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_project/pages/scan_page.dart';

class AddDevicePage extends StatelessWidget {
  const AddDevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add Device"),
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
          ),
          onPressed: () => Get.back(),
        ),
        actions: [
          IconButton(
              onPressed: () => Get.to(ScanPage()),
              icon: Icon(Icons.qr_code_scanner_sharp))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: Get.width / 5,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: Get.width,
              height: Get.width / 5,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Tambahkan Secara Manual"),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: Get.width / 4,
                  height: Get.height / 1.7,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(children: [
                        FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Electrical"),
                          ),
                        ),
                        FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Lighting"),
                          ),
                        ),
                        FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Kemanan"),
                          ),
                        ),
                        FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Dapur"),
                          ),
                        ),
                        FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Kamera"),
                          ),
                        ),
                        FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Energy"),
                          ),
                        ),
                        FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Entertain"),
                          ),
                        ),
                        FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Travel"),
                          ),
                        ),
                        FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Outdor"),
                          ),
                        ),
                        FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Indor"),
                          ),
                        ),
                        FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Health"),
                          ),
                        ),
                        FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Industri"),
                          ),
                        ),
                        FittedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Lainnya"),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
                Container(
                  width: Get.width / 1.5,
                  height: Get.height / 1.7,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 100,
                              childAspectRatio: 1 / 1,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: 30,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text("${index+1}"),
                        );
                      }),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
