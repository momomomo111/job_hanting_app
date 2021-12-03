import 'package:flutter/material.dart';

class ProcessListScreen extends StatelessWidget {
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
              top: 40,
              bottom: 40,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 128,
                  height: 32,
                  child: Text(
                    "選考企業一覧",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 44),
                Container(
                  width: 320,
                  height: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                      BoxShadow(
                        color: Color(0x1e000000),
                        blurRadius: 10,
                        offset: Offset(0, 1),
                      ),
                      BoxShadow(
                        color: Color(0x23000000),
                        blurRadius: 5,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 23,
                    top: 18,
                    bottom: 19,
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            SizedBox(
                              width: 180,
                              height: 20,
                              child: Text(
                                "サイバーエージェント",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 12),
                            SizedBox(
                              width: 180,
                              height: 20,
                              child: Text(
                                "未エントリー",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Positioned.fill(
                        child: FlutterLogo(size: 88),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 44),
                Container(
                  width: 320,
                  height: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                      BoxShadow(
                        color: Color(0x1e000000),
                        blurRadius: 10,
                        offset: Offset(0, 1),
                      ),
                      BoxShadow(
                        color: Color(0x23000000),
                        blurRadius: 5,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 23,
                    top: 18,
                    bottom: 19,
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            SizedBox(
                              width: 180,
                              height: 20,
                              child: Text(
                                "マネーフォワード",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 12),
                            SizedBox(
                              width: 148,
                              height: 20,
                              child: Text(
                                "一次選考通過",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Positioned.fill(
                        child: FlutterLogo(size: 88),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 44),
                Container(
                  width: 320,
                  height: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                      BoxShadow(
                        color: Color(0x1e000000),
                        blurRadius: 10,
                        offset: Offset(0, 1),
                      ),
                      BoxShadow(
                        color: Color(0x23000000),
                        blurRadius: 5,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            SizedBox(
                              width: 180,
                              height: 20,
                              child: Text(
                                "グリー",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 12),
                            SizedBox(
                              width: 144,
                              height: 20,
                              child: Text(
                                "二次面接通過",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Positioned.fill(
                        child: FlutterLogo(size: 88),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 44),
                SizedBox(
                  width: 56,
                  height: 56,
                  child: Material(
                    color: const Color(0xff6200ee),
                    elevation: 4,
                    // color: Color(0x33000000),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                const SizedBox(height: 46.40),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const FlutterLogo(size: 24),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
