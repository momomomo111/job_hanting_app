import 'package:flutter/material.dart';

class ProcessSelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = [
      "未エントリー",
      "書類選考結果待ち",
      "書類選考通過",
      "一次面接結果待ち",
      "一次面接通過",
      "二次面接結果待ち",
      "二次面接通過",
      "最終面接結果待ち",
      "内定/内々定",
      "内定/内々定",
      "内定/内々定",
      "内定/内々定",
      "内定/内々定",
      "お見送り"
    ];
    return Scaffold(
      appBar: AppBar(title: const Text("選考状況選択")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            "企業の選考状況を選択してください",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            "〇〇株式会社",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return RadioListTile(
                  title: Text(
                    list[index],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  value: null,
                  onChanged: (void value) {},
                  groupValue: null,
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: 200,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "決定",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple[800],
                    shape: const StadiumBorder(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
