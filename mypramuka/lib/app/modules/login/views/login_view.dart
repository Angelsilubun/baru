import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';
import 'package:mypramuka/app/modules/home/views/home_view.dart';
import 'package:mypramuka/app/modules/register/views/auth_services.dart';
import 'package:mypramuka/app/modules/register/views/globals.dart';
import 'package:mypramuka/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';
import 'dart:async';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // BuildContext get context {
  void loginPressed() async {
    // if (_usernameController == "" && _passwordController == "") {
    var response = await http.post(
        Uri.parse("http://192.168.1.87:8000/api/auth/login"),
        body: ({
          "username": _usernameController.text,
          "password": _passwordController.text
        }));
    final body = json.decode(response.body);
    if (_usernameController != body["username"]) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Login Gagal"),
      ));
    } else {
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const HomeView(),
            ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Login Gagal"),
        ));
      }
    }

    // }
  }
  //   // http.Response response = await AuthServices.login(_username, _password);
  //   // Map responseMap = jsonDecode(response.body);
  //   // if (response.statusCode == 200) {
  //   //   Navigator.push(
  //   //       context,
  //   //       MaterialPageRoute(
  //   //         builder: (BuildContext context) => const HomeView(),
  //   //       ));
  //   // } else {
  //   //   errorSnackBar(context, responseMap.values.first);
  //   // }
  //   // } else {
  //   //   errorSnackBar(context, 'enter all requires');
  //   // }
  // }

  // static Future<http.Response> loginPressed(
  //     String username, String password) async {
  //   Map data = {"username": username, "password": password};
  //   var body = json.encode(data);
  //   var url = Uri.parse('http://192.168.1.7:8000/api/auth/login');
  //   http.Response response = await http.post(
  //     url,
  //     headers: headers,
  //     body: body,
  //   );
  //   print(response.body);
  //   return response;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Container(
              height: 250,
              child: Image.asset(
                "assets/logo/login.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Username",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Username",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Password",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: loginPressed,
              child: Text(
                "Login",
                style: TextStyle(
                  color: Color(0xFFf0eee4),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF795548), fixedSize: Size(50, 50)),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Belum Memiliki Akun?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.REGISTER);
                  },
                  child: new Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 10),
            // Center(
            //   child: Text("Masuk melalui"),
            // ),
            // SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     OutlinedButton(
            //       onPressed: () {},
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Image.asset("assets/icons/fb.png"),
            //           SizedBox(width: 7),
            //           Text(
            //             "Facebook",
            //             style: TextStyle(
            //               fontSize: 16,
            //               color: Color(0xFF747D8C),
            //             ),
            //           ),
            //         ],
            //       ),
            //       style: ButtonStyle(
            //         fixedSize: MaterialStateProperty.all(
            //           Size(150, 50),
            //         ),
            //         shape: MaterialStateProperty.all(
            //           RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(5.0),
            //           ),
            //         ),
            //         side: MaterialStateProperty.all(
            //           BorderSide(
            //             color: Color(0xFF385998),
            //           ),
            //         ),
            //       ),
            //     ),
            //     OutlinedButton(
            //       onPressed: () {},
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Image.asset("assets/icons/gogoo 1.png"),
            //           SizedBox(width: 7),
            //           Text(
            //             "Google",
            //             style: TextStyle(
            //               fontSize: 16,
            //               color: Color(0xFF747D8C),
            //             ),
            //           ),
            //         ],
            //       ),
            //       style: ButtonStyle(
            //         fixedSize: MaterialStateProperty.all(
            //           Size(150, 50),
            //         ),
            //         shape: MaterialStateProperty.all(
            //           RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(5.0),
            //           ),
            //         ),
            //         side: MaterialStateProperty.all(
            //           BorderSide(
            //             color: Color(0xFF385998),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
