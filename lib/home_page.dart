import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/about_page.dart';
import 'package:getx/controller/app_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.snackbar(
                          "Downloading Completed",
                          "Your song is downloaded",
                        );
                      },
                      child: Text("Snack Bar"),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Alert",
                      content: Text("This is a dialog box"),
                    );
                  },
                  child: Text("Dialog Box"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(AboutPage());
                  },
                  child: Text("Go to new page"),
                ),
                InkWell(
                  onTap: () {
                    appController.increase();
                  },
                  child: Icon(
                    Icons.add,
                    size: 70,
                  ),
                ),
                Obx(
                  () => Text(
                    appController.n.toString(),
                    style: TextStyle(fontSize: 70),
                  ),
                ),
                InkWell(
                  onTap: () {
                    appController.decrease();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 70,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
