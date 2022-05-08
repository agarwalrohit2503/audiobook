import 'package:abook_app1/home/widgets/home.dart';
import 'package:abook_app1/widgets/_common/custom_button.dart';
import 'package:abook_app1/widgets/_common/custom_text_field.dart';
import 'package:abook_app1/widgets/_common/text_error.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({Key? key}) : super(key: key);
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  final errNotifier = ValueNotifier('');
  _onRegister(context) async {
    String email = _email.text.trim();
    String password = _password.text.trim();
    String confirmPassword = _confirmPassword.text.trim();
    if (email.isEmpty || password.isEmpty) {
      errNotifier.value = "Please enter all the values";
    } else if (password != confirmPassword) {
      errNotifier.value = "password and confirm password needs to be same";
    } else {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HomePage()));
      }).catchError((error) {
        if (error is FirebaseAuthException) {
          errNotifier.value = error.message ?? "";
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Sign Up!",
                textScaleFactor: 1.2,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomFormField(
                hint: "Email",
                controller: _email,
              ),
              CustomFormField(
                hint: "Password",
                controller: _password,
              ),
              CustomFormField(
                hint: "Confirm Password",
                controller: _confirmPassword,
              ),
              const SizedBox(height: 10),
              ValueListenableBuilder(
                valueListenable: errNotifier,
                builder: (BuildContext context, String value, Widget? child) {
                  return value.isEmpty
                      ? const SizedBox()
                      : TextError(text: value);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                  title: "Sign Up", onPressed: () => _onRegister(context)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Have an account?",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
