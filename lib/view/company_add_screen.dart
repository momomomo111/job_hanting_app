import 'package:flutter/material.dart';

class CompanyAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Process List Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SizedBox(
        width: 360,
        height: 700,
        child: Material(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 48,
              bottom: 320,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 129,
                  height: 34,
                  child: Text(
                    "選考企業追加",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 42.67),
                const SizedBox(
                  width: 289,
                  height: 58,
                  child: Text(
                    "気になる企業/選考している\n企業を選択してください",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 42.67),
                Container(
                  width: 328,
                  height: 72,
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 12,
                    top: 15,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "企業名を追加してください",
                        style: TextStyle(
                          color: Color(0x99000000),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 39.50),
                      Text(
                        "企業名",
                        style: TextStyle(
                          color: Color(0xdd000000),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 42.67),
                SizedBox(
                  width: 146,
                  height: 38,
                  child: Material(
                    color: const Color(0xff6200ee),
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 6,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 6,
                                right: 8,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Expanded(
                                    child: SizedBox(
                                      child: Text(
                                        "追加",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.25,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
