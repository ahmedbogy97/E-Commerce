import 'package:amit/Login.dart';
import 'package:flutter/material.dart';

import 'button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  bool showPassword = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text("SignUp",style: TextStyle(color: Colors.white),),
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
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Name';
                        } else if (value.trim().isEmpty) {
                          return 'Enter valid Name';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        prefixIcon: Icon(Icons.person),
                        hintText: "Enter Your Name",
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
                      keyboardType: TextInputType.emailAddress,
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
                        border: OutlineInputBorder(borderSide: BorderSide()),
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
                      keyboardType: TextInputType.visiblePassword,
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
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        prefixIcon: Icon(Icons.password),
                        hintText: "Enter your Password",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 16,
          ),
          CommonButton(
            buttonText: 'SignUp',
            onTap: () {
              if (!_formKey.currentState!.validate()) {}
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            child: const Text(
              'Have an Account? \n Go Login.',
              style: TextStyle(
                  color: Colors.black,

                  fontSize: 14),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
          )
        ],
      ),
    ));
  }
}
