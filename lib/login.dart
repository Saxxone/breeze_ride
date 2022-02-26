import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/user_controller.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  Login({Key? key}) : super(key: key);
  final UserController userController = Get.put(UserController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //email field
    final emailField = TextFormField(
      autofocus: false,
      autofillHints: const [AutofillHints.email],
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // validator: () {},
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          isCollapsed: true,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      autofillHints: const [AutofillHints.password],
      controller: passwordController,
      obscureText: true,
      // validator: () {},
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          isCollapsed: true,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/semicircle.png",
                  height: 45,
                ),
                const SizedBox(
                  height: 85,
                ),
                const Text(
                  "Hey,",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  "Welcome back",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                emailField,
                const SizedBox(
                  height: 45,
                ),
                passwordField,
                const SizedBox(
                  height: 60,
                ),
                Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.teal,
                  textStyle: const TextStyle(
                    fontFamily: 'Mulish',
                  ),
                  child: MaterialButton(
                      padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                      minWidth: MediaQuery
                          .of(context)
                          .size
                          .width,
                      onPressed: () {
                        print(userController.isLoading.value);
                        userController.login({
                          "email": emailController.text,
                          "password": passwordController.text,
                        });
                      },
                      child: GetBuilder<UserController>(
                        builder: (_) {
                          if (userController.isLoading.value) {
                            return const SizedBox(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 3,
                              ),
                              height: 20,
                              width: 20,
                            );
                          } else {
                            return const Text(
                              "Login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'Mulish'),
                            );
                          }
                        },
                      )
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        )),
                    const SizedBox(
                      width: 18,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
