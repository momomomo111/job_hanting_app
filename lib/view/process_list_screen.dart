import 'package:flutter/material.dart';

class ProcessListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = [
      ["サイバーエージェント", "未エントリー"],
      ["マネーフォワード", "一次選考通過"],
      ["グリー", "二次選考通過"],
      ["グリー", "二次選考通過"],
      ["グリー", "二次選考通過"],
      ["グリー", "二次選考通過"],
      ["グリー", "二次選考通過"],
      ["グリー", "二次選考通過"],
      ["グリー", "二次選考通過"],
    ];
    return Scaffold(
      appBar: AppBar(title: const Text("選考企業一覧")),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 4.0, horizontal: 16.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 0.1,
                          blurRadius: 10.0,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    width: double.infinity,
                    height: 100,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list[index][0],
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Text(
                                  list[index][1],
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        child: const Icon(
          Icons.playlist_add_outlined,
        ),
      ),
    );
  }
}
