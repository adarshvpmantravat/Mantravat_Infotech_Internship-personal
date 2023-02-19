import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:my_demo_app/welcomepage.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState!.validate()) {
      print("Ok");
    } else {
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login.jpg'), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(children: [
              Container(
                padding: const EdgeInsets.only(top: 110, left: 40),
                child: const Text(
                  'Welcome to\nMantravat Infotech',
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
              SingleChildScrollView(
                child: Center(
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 250, left: 35, right: 35),
                    child: Column(children: [
                      Form(
                        key: formkey,
                        child: Column(children: [
                          TextFormField(
                            validator: MultiValidator([
                              EmailValidator(errorText: "Not Valid"),
                              RequiredValidator(errorText: "Required")
                            ]),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: 'Email',
                            ),
                          ),
                          const SizedBox(height: 40),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: 'Password',
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Sign In',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: IconButton(
                                  color: Colors.black,
                                  onPressed: () {
                                    validate();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: ((context) =>
                                            const MyWelcomePage()),
                                      ),
                                    );
                                  },
                                  icon: const Icon(Icons.arrow_forward),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'register');
                                  },
                                  child: const Text(
                                    'Sign Up',
                                    style: TextStyle(fontSize: 22),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 22),
                                  ))
                            ],
                          ),
                        ]),
                      )
                    ]),
                  ),
                ),
              )
            ])));
  }
}
