import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:management/resources/responshive.dart';
import '../../app/modules/home/view/home_view.dart';
import '../controller/home_controller.dart';
import '../widgets.dart';

class MyHomePage extends StatelessWidget {

   MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child:
          Align(alignment: Alignment.center,
         
            child: Container(
              margin: const EdgeInsets.only( left: 28, right: 28),
            
             width: ResponsiveWidget.isSmallScreen(context)? context.width :context.width*0.4, 
              height: context.height ,
              
              child: SingleChildScrollView(
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: controller.loginFormKey,
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                     
                   Column(
                     children: [
                      Align(alignment: Alignment.topRight,
                        child:  DropdownButton(
                          elevation: 0,
      
                                   items: const [
                                     DropdownMenuItem(
                                       child: Text("'dark'"),
                                       value: 1,
                                     ),
                                     DropdownMenuItem(
                                       child: Text("light"),
                                       value: 2,
                                     )
                                   ],
                                   
                               
                                   hint:const Text("Themes"), onChanged: (int? value) {  },
                                   ),),
                       
                     ],
                   ),

                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
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
                        controller: controller.emailController,
                        onSaved: (value) {
                          controller.email = value!;
                        },
                        validator: (value) {
                          return controller.validateEmail(value!);
                        },
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
                        controller: controller.passwordController,
                        onSaved: (value) {
                          controller.password = value!;
                        },
                        validator: (value) {
                          return controller.validatePassword(value!);
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(width: context.width),
                        child: ElevatedButton(
                          onPressed: () {
                            controller.checkLogin();
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.deepPurpleAccent),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.all(14),
                            ),
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      FlatButton(
                          onPressed: () {
                        Get.toNamed('/home/:tab');
                        
                          
                          },
                           child: TextWidget("Forget your password?")
                          ),
                      const SizedBox(
                        height: 100,
                      ),
                      
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey[300],
                              height: 100,
                            ),
                          ),
                           Padding(
                            padding:  const EdgeInsets.symmetric(horizontal: 20),
                            child: TextWidget('or continue with'),
                          ),
                          Expanded(
                              child: Divider(
                            color: Colors.grey[400],
                            height: 50,
                          )),
                        ],
                      ),

                      const SizedBox(
                        height: 16,
                      ),
                      Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.blueAccent),
                                  padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(14),
                                  ),
                                ),
                                child: Wrap(
                                  children: const [
                                    Icon(FontAwesomeIcons.facebook),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Facebook",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ],
                                )),
                            const SizedBox(
                              width: 15,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.deepPurpleAccent),
                                  padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(14),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 6.0, right: 6.0),
                                  child: Wrap(
                                    children: const [
                                      Icon(FontAwesomeIcons.twitter),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Twitter",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           TextWidget("Don't have account?"),
                            
                              
                          const SizedBox(
                            width: 10,
                          ),
                          FlatButton(
                              onPressed: () {
                                Get.toNamed( 'SignUpPage');
                              },
                              child:  TextWidget("Sign up"),
                                 ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
     ) );
  }
}

