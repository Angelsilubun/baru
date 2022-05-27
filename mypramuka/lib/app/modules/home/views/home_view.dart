import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mypramuka/app/modules/latihan/views/detail_latihan.dart';
import 'package:mypramuka/app/modules/latihan/views/latihan_view.dart';
import 'package:mypramuka/app/modules/latihan/views/sejarah_kepramukaan.dart';
import 'package:mypramuka/app/modules/materi/views/sandi_pramuka.dart';
import 'package:mypramuka/app/modules/pengetahuan/views/pengetahuan_satu.dart';
import 'package:mypramuka/app/modules/pengetahuan/views/pengetahuan_view.dart';
import 'package:mypramuka/app/modules/profile/views/profile_view.dart';
import 'package:mypramuka/app/routes/app_pages.dart';
import '../../materi/views/materi_view.dart';
import '../controllers/home_controller.dart';
import 'Navbar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: TextSpan(
            text: "MY ",
            style: TextStyle(
              fontSize: 18,
            ),
            children: [
              TextSpan(
                text: "PRAMUKA",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            width: 30,
            height: 30,
            child: Image.asset(
              "assets/icons/pram.png",
              fit: BoxFit.contain,
            ),
          ),
        ],
        backgroundColor: Color(0xFF795548),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 200,
              width: Get.width,
              color: Color(0xFF795548),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        // height: 200,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF8D6E63),
                              Color(0xFF795548),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Pramuka Penegak se Indramayu",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Mewujudkan Pramuka Juara Lahir Batin",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Divider(
                              color: Colors.white,
                            ),
                            SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                text: "Satyaku Kudarmakan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Text(
                              "Darmaku Kubaktikan",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 7,
                  color: Colors.grey[300],
                ),
                Expanded(
                  child: Container(
                    // color: Colors.purple,
                    child: Column(
                      children: [
                        //body
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            children: [
                              SizedBox(height: 40),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                SizedBox(
                                                    child:
                                                        const SandiPramuka()),
                                          ));
                                    },
                                    child: ItemKategori(
                                      title: "Materi",
                                      icon: "assets/icons/materi.png",
                                    ),
                                  ),
                                  ItemKategori(
                                    title: "Anggota",
                                    icon: "assets/icons/angotaa.png",
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                SizedBox(
                                                    child:
                                                        const SejarahKepramukaan()),
                                          ));
                                    },
                                    child: ItemKategori(
                                      title: "Latihan",
                                      icon: "assets/icons/latihan.png",
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                SizedBox(
                                                    child:
                                                        const PengetahuanView()),
                                          ));
                                    },
                                    child: ItemKategori(
                                      title: "Knowledge",
                                      icon: "assets/icons/pengetahuan.png",
                                    ),
                                  ),
                                  ItemKategori(
                                    title: "Kegiatan",
                                    icon: "assets/icons/kegiatann.png",
                                    // press: () {},
                                  ),
                                  ItemKategori(
                                    title: "Pedoman",
                                    icon: "assets/icons/pedoman.png",
                                    // press: () {},
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Info Penting",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Lihat Semua",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ItemInfo(
                                        image: "assets/images/image-1.png"),
                                    ItemInfo(
                                        image: "assets/images/image-2.png"),
                                    ItemInfo(
                                        image: "assets/images/image-1.png"),
                                    ItemInfo(
                                        image: "assets/images/image-2.png"),
                                    ItemInfo(
                                        image: "assets/images/image-1.png"),
                                    ItemInfo(
                                        image: "assets/images/image-2.png"),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Berita",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Lihat Semua",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        //navigation
                        // Container(
                        //   // margin: EdgeInsets.only(bottom: 20),
                        //   height: 100,
                        //   decoration: BoxDecoration(
                        //     border: Border(
                        //       top: BorderSide(
                        //         color: Colors.grey,
                        //       ),
                        //     ),
                        //   ),
                        //   // color: Colors.amber,
                        //   // child: Row(
                        //   //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   //   children: [
                        //   //     ItemNav(
                        //   //       icon: "home",
                        //   //       status: true,
                        //   //       title: "Beranda",
                        //   //     ),
                        //   //     ItemNav(
                        //   //       icon: "bantuan",
                        //   //       status: false,
                        //   //       title: "Bantuan",
                        //   //     ),
                        //   //     GestureDetector(
                        //   //       onTap: () {
                        //   //         Navigator.push(
                        //   //             context,
                        //   //             MaterialPageRoute(
                        //   //               builder: (BuildContext context) =>
                        //   //                   SizedBox(
                        //   //                       child: const ProfileView()),
                        //   //             ));
                        //   //       },
                        //   //       child: new ItemNav(
                        //   //         icon: "akun",
                        //   //         status: false,
                        //   //         title: "Akun",
                        //   //       ),
                        //   //     ),
                        //   //   ],
                        //   // ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemInfo extends StatelessWidget {
  ItemInfo({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: Get.width * 0.7,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  ItemKategori({
    Key? key,
    required this.title,
    required this.icon,
    // required this.press,
  }) : super(key: key);

  final String title;
  final String icon;
  // final Function press;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  ItemNav({
    Key? key,
    required this.status,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 20,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-active.png"
                : "assets/icons/$icon.png",
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Beranda",
          style: TextStyle(
            color: (status == true) ? Color(0xFF602924) : Color(0Xff747D8C),
          ),
        ),
      ],
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
