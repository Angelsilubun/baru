import 'package:flutter/material.dart';
import 'package:mypramuka/app/modules/materi/views/detail_sandi.dart';

class SandiPramuka extends StatelessWidget {
  const SandiPramuka({Key? key}) : super(key: key);
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
                            "Materi Pramuka",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SizedBox(child: const SandiDetail()),
                                  ));
                            },
                            child: new DetailSandi(
                              number: "01",
                              title: "Sejarah Pramuka",
                              Slug: "Welcome to Materi Pramuka",
                              isDone: true,
                            ),
                          ),
                          DetailSandi(
                            number: "02",
                            title: "Dasa Dharma",
                            Slug: "Welcome to Materi Pramuka",
                            isDone: true,
                          ),
                          DetailSandi(
                            number: "03",
                            title: "Dwisatya",
                            Slug: "Welcome to Materi Pramuka",
                            isDone: true,
                          ),
                          DetailSandi(
                            number: "04",
                            title: "Lambang Pramuka",
                            Slug: "Welcome to Materi Pramuka",
                            isDone: true,
                          ),
                          DetailSandi(
                            number: "05",
                            title: "Salam Pramuka",
                            Slug: "Welcome to Materi Pramuka",
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
