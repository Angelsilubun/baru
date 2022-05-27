import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mypramuka/app/modules/pengetahuan/views/pengetahuan_satu.dart';

import '../controllers/pengetahuan_controller.dart';

class PengetahuanView extends StatelessWidget {
  const PengetahuanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF5F4EF),
          image: DecorationImage(
            image: AssetImage("assets/images/materi.png"),
            alignment: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 300),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Pengetahuan Pramuka",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => SizedBox(
                                        child: const PengetahuanSatu()),
                                  ));
                            },
                            child: new DetailSandi(
                              number: "01",
                              title: "Pengetahuan",
                              Slug: "Welcome to Latihan",
                              isDone: true,
                            ),
                          ),
                          DetailSandi(
                            number: "02",
                            title: "Sejarah",
                            Slug: "Welcome to Latihan",
                            isDone: true,
                          ),
                          DetailSandi(
                            number: "03",
                            title: "Peraturan",
                            Slug: "Welcome to Latihan",
                            isDone: true,
                          ),
                          DetailSandi(
                            number: "04",
                            title: "Jenjang Organisasi",
                            Slug: "Welcome to Latihan",
                            isDone: true,
                          ),
                          DetailSandi(
                            number: "05",
                            title: "Arti Kiasan",
                            Slug: "Welcome to Latihan",
                            isDone: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailSandi extends StatelessWidget {
  final String number;
  final String title;
  final String Slug;
  final bool isDone;
  const DetailSandi({
    Key? key,
    required this.number,
    required this.title,
    required this.Slug,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: TextStyle(
              fontSize: 35,
              color: Colors.black.withOpacity(.15),
            ),
          ),
          SizedBox(width: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 17,
                  ),
                ),
                TextSpan(
                  text: Slug,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF795548).withOpacity(isDone ? 1 : .5),
            ),
            child: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
