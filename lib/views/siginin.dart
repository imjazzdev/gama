import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gama/utils/const.dart';
import 'package:gama/views/guru/home.dart';
import 'package:gama/views/siswa/home.dart';
import 'package:gama/widgets/bottom_nav.dart';
import 'package:gama/widgets/in_develop_page.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool isVisible = true;
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          // Opacity(
          //   opacity: .5,
          //   child: Image.asset(
          //     'assets/bg.jpeg',
          //     fit: BoxFit.cover,
          //     height: double.maxFinite,
          //     width: double.maxFinite,
          //   ),
          // ),
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            padding: EdgeInsets.all(25),
            child: ListView(
              children: [
                SizedBox(
                  height: 70,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 200,
                      child: Image.asset(
                        'assets/education.png',
                        height: 200,
                      ),
                    ),
                    // Positioned(
                    //   bottom: 0,
                    //   left: 0,
                    //   child: SizedBox(
                    //     width: 200,
                    //     child: CircleAvatar(
                    //       radius: 30,
                    //       backgroundColor: Colors.white.withOpacity(0.9),
                    //       child: Image.asset(
                    //         'assets/logo.png',
                    //         height: 40,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 35,
                      // shadows: [
                      //   Shadow(
                      //       offset: Offset(1, 1),
                      //       blurRadius: 5,
                      //       color: Colors.blue)
                      // ],
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.5),
                          blurRadius: 5,
                        )
                      ]),
                  child: Column(
                    children: [
                      TextField(
                        controller: email,
                        decoration: const InputDecoration(
                            border: InputBorder.none, labelText: 'Email'),
                      ),
                      const Divider(),
                      TextField(
                        controller: password,
                        // obscureText: isVisible,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Password',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                                icon: Icon(isVisible
                                    ? CupertinoIcons.eye
                                    : CupertinoIcons.eye_slash))),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InDevelopPage(),
                              ));
                        },
                        child: Text('Sign Up')),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InDevelopPage(),
                              ));
                        },
                        child: Text('Forgot password')),
                  ],
                ),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () async {
                        if (email.text == 'siswa@gmail.com') {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomNav()),
                            (Route<dynamic> route) => false,
                          );
                        } else if (email.text == 'guru@gmail.com') {
                          Constants.isGuru = true;
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomNav()),
                            (Route<dynamic> route) => false,
                          );
                        } else {
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.scale,
                            dialogType: DialogType.warning,
                            title: 'Data tidak ditemukan',
                            btnOkOnPress: () {},
                          ).show();
                        }
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
