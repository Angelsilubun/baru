import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'auth_services.dart';
import 'globals.dart';

import '../../login/views/login_view.dart';

import 'package:get/get.dart';
import 'package:mypramuka/app/modules/home/views/home_view.dart';
import 'package:mypramuka/app/modules/register/views/globals.dart';
import 'package:mypramuka/app/routes/app_pages.dart';

import '../controllers/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);
  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  // String _email = '';
  // String _password = '';
  // String _confirm = '';
  // String _username = '';
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();

  Future<void> createAccountPressed() async {
    bool emailValid = RegExp('').hasMatch(_emailController.text);
    if (emailValid) {
      // http.Response response = await AuthServices.register(
      //     _confirmController.text,
      //     _usernameController.text,
      //     _emailController.text,
      //     _passwordController.text);
      var response = await http.post(
        Uri.parse('http://192.168.1.87:8000/api/register'),
        body: {
          "name": _usernameController.text,
          "username": _usernameController.text,
          "email": _emailController.text,
          "password": _passwordController.text
        },
      );
      // print(response);
      // Map responseMap = jsonDecode(response.body);
      Get.offAllNamed(Routes.LOGIN);
      // if (response.statusCode == 200) {
      // } else {
      //   errorSnackBar(context, responseMap.values.first[0]);
      // }
    } else {
      errorSnackBar(context, 'Email tidak valid');
    }
  }

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
              "Email",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
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
            Text(
              "Confirm Password",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _confirmController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Confirm Password",
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                createAccountPressed();
                // Get.offAllNamed(Routes.LOGIN);
              },
              child: Text(
                "Login",
                style: TextStyle(
                  color: Color(0xFFf0eee4),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF795548), fixedSize: Size(50, 50)),
            ),
          ],
        ),
      ),
    );
  }
}
