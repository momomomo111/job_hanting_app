import 'package:flutter/material.dart';

class ProcessSelectScreen extends StatelessWidget {
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
              left: 31,
              right: 25,
              top: 48,
              bottom: 32,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 297,
                  height: 26,
                  child: Text(
                    "企業の選考情報を選択してください",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 4.36),
                const SizedBox(
                  width: 177,
                  height: 20,
                  child: Text(
                    "○○○株式会社",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 4.36),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Stack(
                              children: const [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Material(
                                    color: Color(0xff6200ee),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4.36),
                const SizedBox(
                  width: 147,
                  height: 20,
                  child: Text(
                    "未エントリー",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 4.36),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Stack(
                              children: const [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Material(
                                    color: Color(0x99000000),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Material(
                              color: const Color(0x7f7f3a44),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4.36),
                const SizedBox(
                  width: 174,
                  height: 20,
                  child: Text(
                    "書類選考結果待ち",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 4.36),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Stack(
                              children: const [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Material(
                                    color: Color(0x99000000),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Material(
                              color: const Color(0x7f7f3a44),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4.36),
                const SizedBox(
                  width: 174,
                  height: 20,
                  child: Text(
                    "書類選考通過",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 4.36),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Stack(
                              children: const [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Material(
                                    color: Color(0x99000000),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Material(
                              color: const Color(0x7f7f3a44),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4.36),
                const SizedBox(
                  width: 174,
                  height: 20,
                  child: Text(
                    "一次面接結果待ち",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 4.36),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Stack(
                              children: const [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Material(
                                    color: Color(0x99000000),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Material(
                              color: const Color(0x7f7f3a44),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4.36),
                const SizedBox(
                  width: 174,
                  height: 20,
                  child: Text(
                    "一次面接通過",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 4.36),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Stack(
                              children: const [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Material(
                                    color: Color(0x99000000),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Material(
                              color: const Color(0x7f7f3a44),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4.36),
                const SizedBox(
                  width: 174,
                  height: 20,
                  child: Text(
                    "二次面接結果待ち",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 4.36),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Stack(
                              children: const [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Material(
                                    color: Color(0x99000000),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Material(
                              color: const Color(0x7f7f3a44),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4.36),
                const SizedBox(
                  width: 174,
                  height: 20,
                  child: Text(
                    "二次面接通過",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 4.36),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Stack(
                              children: const [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Material(
                                    color: Color(0x99000000),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Material(
                              color: const Color(0x7f7f3a44),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4.36),
                const SizedBox(
                  width: 174,
                  height: 20,
                  child: Text(
                    "最終面接結果待ち",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 4.36),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Stack(
                              children: const [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Material(
                                    color: Color(0x99000000),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Material(
                              color: const Color(0x7f7f3a44),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4.36),
                const SizedBox(
                  width: 174,
                  height: 20,
                  child: Text(
                    "内定/内々定",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 4.36),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Stack(
                              children: const [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Material(
                                    color: Color(0x99000000),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Material(
                              color: const Color(0x7f7f3a44),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4.36),
                const SizedBox(
                  width: 174,
                  height: 20,
                  child: Text(
                    "お見送り",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 4.36),
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
                                        "決定",
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
