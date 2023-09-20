 import 'package:flutter/material.dart';
import 'package:test/home.dart';

// for LOGIN

void login(TextEditingController email, TextEditingController pass,
    BuildContext context) {
  String emaill = email.text.trim();
  String passl = pass.text.trim();

  if (emaill.isEmpty || passl.isEmpty) {
    print("please fill all field");
  } else {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => home(),
        ));
  }
}

// for sign up

void signup(TextEditingController Email, TextEditingController password,
    TextEditingController confirmpassword, BuildContext context) {
  String Emaill = Email.text.trim();
  String Pass = password.text.trim();
  String Confirmpassword = confirmpassword.text.trim();

  if (Emaill.isEmpty || Pass.isEmpty || Confirmpassword.isEmpty) {
    print("Please fill all field");
  }
  // if (Pass ! =Confirmpassword);

  else {
    Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
  }
}
