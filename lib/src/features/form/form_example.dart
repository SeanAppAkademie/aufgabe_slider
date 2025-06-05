import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormFieldState> emailKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool emailIsValid = false;
  bool passwordIsValid = false;

  String? validateEmail(String? input) {
    if (input == null || !input.contains("@")) {
      return "Bitte email eingeben";
    }

    return null;
  }

  String? validatePassword(String? input) {
    if (input == null || input.length < 8) {
      return "Mindestens 8 Zeichen";
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mein Formular"),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    key: emailKey,
                    controller: emailController,
                    validator: validateEmail,
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    onChanged: (value) {
                      setState(() {
                        emailIsValid = emailKey.currentState!.isValid;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Email Adresse",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    key: passwordKey,
                    controller: passwordController,
                    validator: validatePassword,
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    onChanged: (value) {
                      setState(() {
                        passwordIsValid = passwordKey.currentState!.isValid;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Passwort Adresse",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            FilledButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: emailIsValid && passwordIsValid
                    ? Colors.green
                    : Colors.grey,
              ),
              onPressed: () {
                // login
              },
              child: Text("Einloggen"),
            ),
          ],
        ),
      ),
    );
  }
}
