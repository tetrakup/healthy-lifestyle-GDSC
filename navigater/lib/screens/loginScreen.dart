import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:navigater/core/storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/api.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  showError(BuildContext context) {
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => CupertinoAlertDialog(
        title: const Row(
          children: [
            Icon(Icons.warning),
            Gap(12.0),
            Text("Error"),
          ],
        ),
        content: const Text("Invalid Credentials Check and Try Again"),
        actions: [
          CupertinoDialogAction(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Ok"),
          ),
        ],
      ),
    );
  }

  loginUser() async {
    setState(() {
      loading = false;
    });
    final API api = API(); //api sinifindan bir nesne ürettik.

    try {
      final response = await api.loginUser(
          email: emailController.text, password: passwordController.text);

      if (response is Exception) {
        //eger giriş başarıylsa
        //Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
        print(response);
        showError(context);
      } else {
        Storage storage = await Storage();
        await storage.saveUser(
            id: response["data"]["user"]["id"],
            name: response["data"]["user"]["name"],
            email: response["data"]["user"]["email"],
            phone: response["data"]["user"]["phone_number"]);

        await storage.saveToken(response["data"]["token"]);

        Navigator.of(context).pushReplacementNamed("/anaekran");
        // final SharedPreferences prefs = await SharedPreferences.getInstance();
        // String user = jsonEncode(response);
        // await prefs.setString("user", user);

        //ana ekrana  yönld.
      }
    } catch (e) {
      //giriş başarısızsa
      print("hata oluştu: $e");
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  checkSession() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    var user = prefs.getString("user");

    if (user != null) {
      var x = jsonDecode(user);
      print(x);
    } else {
      print("No logins, please log in");
    }
  }

  @override
  void initState() {
    checkSession();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: loading
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [//Image.asset("image/assets/register3.jpg"),
                  SvgPicture.asset(
                    "assets/icons/book.svg",
                    height: 130,
                    colorFilter: ColorFilter.mode(
                      Colors.blueGrey,
                      BlendMode.srcIn,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Email:"),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: TextField(
                            controller: emailController,
                            decoration: const InputDecoration(
                                hintText:
                                    "Enter your email address" //YER TUTUCU
                                ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Password:"),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: TextField(
                            controller: passwordController,
                            decoration: const InputDecoration(
                                hintText: "Please, enter your password"),
                            obscureText:
                                true, // Şifrenin gizli olarak gösterilmesi için
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: loginUser,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/login.svg",
                                height: 30,
                                colorFilter: ColorFilter.mode(
                                  Colors.white60,
                                  BlendMode.srcIn,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Click to Login!"),
                            ],
                          ),
                        ),
                        Gap(8),
                        //hala üye degil misin?üye ol.
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Row(
                            children: [
                              //Icon(Icons.app_registration),
                              SvgPicture.asset(
                                "assets/icons/register.svg",
                                height: 30,
                                colorFilter: ColorFilter.mode(
                                  Colors.white60,
                                  BlendMode.srcIn,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Still Not a Member? Join Us!"),
                            ],
                          ),
                        ),
                        //üye ol bitis
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
