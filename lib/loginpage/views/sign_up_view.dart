import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:management/app/modules/home/view/home_view.dart';

import '../../resources/responshive.dart';
import '../widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Align(alignment: Alignment.center,
                child: Container(
                    margin: const EdgeInsets.only(top: 90, left: 28, right: 28),
                    height: context.height,
                    width: ResponsiveWidget.isSmallScreen(context)? context.width :context.width*0.4, 

                    child: SingleChildScrollView(
                        child: Form(
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                      const Text(
                        "Sign up",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                       TextWidget("Create an Account"),
                         
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: "Email",
                          hintText: "name@example.com",
                          prefixIcon: const Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: "Password",
                          prefixIcon: const Icon(FontAwesomeIcons.key),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: "Confirm Password",
                          prefixIcon: const Icon(FontAwesomeIcons.key),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints.tightFor(width: context.width),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed('/home/:tab');
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.all(14),
                            ),
                          ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           TextWidget("Already have an account? "),
                            
                          FlatButton(
                              onPressed: () {
                                Get.toNamed('MyHomePage');
                              },
                              child: const Text("Login",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.purple,
                                  ))),
                        ],
                      ),
                    ])))))));
  }
}
