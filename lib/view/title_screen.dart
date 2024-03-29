import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              "My就活状況共有アプリ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 34),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 300,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/user-select');
                    },
                    child: const Text(
                      "閲覧する方はこちらから",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      shape: const StadiumBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 300,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/auth');
                    },
                    child: const Text(
                      "就活生の方はこちらから",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      shape: const StadiumBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
