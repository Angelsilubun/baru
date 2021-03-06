import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mypramuka/app/modules/latihan/views/sejarah_kepramukaan.dart';

import '../controllers/latihan_controller.dart';

class LatihanView extends GetView<LatihanController> {
  const LatihanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF795548),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF795548),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            child: Image.asset(
              "assets/logo/splash.png",
              height: 80,
            ),
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Latihan Pramuka",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // BUTTON //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => SejarahKepramukaan(),
                      ),
                    );
                  },
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Column(children: [
                          Text(
                            "Sejarah Kepramukaan",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF602924),
                            ),
                          ),
                        ]),
                        width: 120,
                        height: 120,
                        // color: Colors.amber,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12)),
                      Container(
                        child: Image.asset("assets/logo/splash.png"),
                        width: 100,
                        height: 100,
                        // color: Colors.red,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 245, 245, 245),
                    fixedSize: Size(330, 130),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Column(children: [
                          Text(
                            "Tali Temali",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF602924),
                            ),
                          ),
                        ]),
                        width: 120,
                        height: 120,
                        // color: Colors.amber,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12)),
                      Container(
                        child: Image.asset("assets/logo/splash.png"),
                        width: 100,
                        height: 100,
                        // color: Colors.red,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 245, 245, 245),
                    fixedSize: Size(330, 130),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Column(children: [
                          Text(
                            "Tali Temali",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF602924),
                            ),
                          ),
                        ]),
                        width: 120,
                        height: 120,
                        // color: Colors.amber,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12)),
                      Container(
                        child: Image.asset("assets/logo/splash.png"),
                        width: 100,
                        height: 100,
                        // color: Colors.red,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 245, 245, 245),
                    fixedSize: Size(330, 130),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Column(children: [
                          Text(
                            "Tali Temali",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF602924),
                            ),
                          ),
                        ]),
                        width: 120,
                        height: 120,
                        // color: Colors.amber,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12)),
                      Container(
                        child: Image.asset("assets/logo/splash.png"),
                        width: 100,
                        height: 100,
                        // color: Colors.red,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 245, 245, 245),
                    fixedSize: Size(330, 130),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Column(children: [
                          Text(
                            "Tali Temali",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF602924),
                            ),
                          ),
                        ]),
                        width: 120,
                        height: 120,
                        // color: Colors.amber,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12)),
                      Container(
                        child: Image.asset("assets/logo/splash.png"),
                        width: 100,
                        height: 100,
                        // color: Colors.red,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 245, 245, 245),
                    fixedSize: Size(330, 130),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
