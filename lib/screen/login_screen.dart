import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 601,
              width: 476,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.CardBorderColor)),
              child: Column(
                children: [
                  Image.asset("assets/images/logo.png",
                      height: 250, width: 300),
                  Text(
                    "Admin Login",
                    style: TextStyle(
                        color: AppColors.fontColor,
                        fontSize: 32,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 50),
                  Column(
                    children: [
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: _userNameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintText: "USERNAME",
                              prefixIcon: Image.asset("assets/images/user.png"),
                              hintStyle:
                                  TextStyle(color: AppColors.CardBorderColor),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          autocorrect: true,
                          textCapitalization: TextCapitalization.words,
                          enableSuggestions: false,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a username';
                            }
                            return null;
                          },

                          // ignore: missing_return
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            suffixIcon:
                                Image.asset("assets/images/cpassword.png"),
                            prefixIcon:
                                Image.asset("assets/images/password.png"),
                            hintStyle:
                                TextStyle(color: AppColors.CardBorderColor),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.CardBorderColor)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          autocorrect: true,
                          textCapitalization: TextCapitalization.words,
                          enableSuggestions: false,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null;
                          },

                          // ignore: missing_return
                        ),
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            FirebaseAuth auth = FirebaseAuth.instance;
                            UserCredential credential =
                                await auth.signInWithEmailAndPassword(
                                    email: _userNameController.text,
                                    password: _passwordController.text);
                            // auth.signInWithEmailAndPassword(
                            //         email: _userNameController.text,
                            //         password: _passwordController.text)
                            //     .then((value) => {debugPrint("${value}")});
                          }
                        },
                        child: Container(
                          height: 73,
                          width: 356,
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(17)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Login",
                                  style: TextStyle(
                                      color: AppColors.fontColor,
                                      fontSize: 24,
                                      fontFamily: 'Poppins')),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
