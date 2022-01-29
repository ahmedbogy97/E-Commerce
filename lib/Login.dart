import 'package:amit/SignUp.dart';
import 'package:amit/button.dart';
import 'package:amit/c/show_custom_snack_bar.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool showPassword = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     "Login",
        //     style: TextStyle(color: Colors.white),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: Colors.red,
        // ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  height: 220,
                  width: 220,
                  child: Image.asset(
                    'assets/images/img.jpeg',
                    height: 100,
                    width: 200,
                    alignment: const Alignment(2, 0.2),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        // width: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: const BoxDecoration(),
                        child: TextFormField(
                          controller: emailController,
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Email Address';
                            } else {
                              bool emailValid = RegExp(
                                      r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                  .hasMatch(value);
                              if (!emailValid) {
                                return 'Enter valid Email';
                              }
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            prefixIcon: Icon(Icons.email),
                            hintText: "Enter your E-mail",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        // width: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: const BoxDecoration(),
                        child: TextFormField(
                          obscureText: showPassword,
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter your Password';
                            } else if (value.length < 8) {
                              return 'Please Enter Valid Password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },

                              /// This is Magical Function
                              child: Icon(
                                showPassword
                                    ?

                                    /// CHeck Show & Hide.
                                    Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            prefixIcon: Icon(Icons.password),
                            hintText: "Enter your Password",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      // Container(
                      //   width: 300,
                      //   margin: const EdgeInsets.symmetric(horizontal: 16),
                      //   decoration: const BoxDecoration(
                      //     // borderRadius: BorderRadius.circular(10),
                      //       border: Border(
                      //         bottom: BorderSide(color: Colors.grey),
                      //       )
                      //   ),
                      //   child: TextFormField(
                      //     validator: (value) {
                      //       if (value == null || value.isEmpty) {
                      //         return 'Please Enter your Password';
                      //       }else if(value.length < 8){
                      //         return 'Please Enter Valid Password';
                      //       }
                      //       return null;
                      //     },
                      //     obscureText: showPassword,
                      //     decoration: InputDecoration(
                      //         border:  const OutlineInputBorder(
                      //             borderSide:  BorderSide()),
                      //         suffix: InkWell(
                      //           onTap: (){
                      //             setState(() {
                      //               showPassword = !showPassword;
                      //             });
                      //           },  /// This is Magical Function
                      //           child: Icon(
                      //             showPassword ?         /// CHeck Show & Hide.
                      //             Icons.visibility :
                      //             Icons.visibility_off,
                      //           ),
                      //         ),
                      //         // prefixIcon: Icon(Icons.remove_red_eye_rounded),
                      //         hintText: "Enter your Password",
                      //
                      //         hintStyle: TextStyle(color: Colors.grey),
                      //        ),
                      //   ),
                      // ),
                    ],
                  )),
              const SizedBox(
                height: 16,
              ),


              CommonButton(
                buttonText: 'Login',
                onTap: () {
                  if (!_formKey.currentState!.validate()) {}
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                child: const Text(
                  'Go SignUp',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
              )
            ],
          ),
        ));
  }

  bool validateEmail(String value) {
    var pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }
}
