import 'package:flutter/material.dart';
import 'package:test/function/function.dart';
import 'package:test/sign.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
        hintColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          title: Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.orangeAccent,
          elevation: 0,
        ),
        backgroundColor: Colors.orange, // Set the background to orange
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock,
                    size: 80,
                    color: Colors.white,
                  ),
                  SizedBox(height: 32),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter email",
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent),
                      ),
                    ),
                    controller: emailController,
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: TextButton(
                        child:
                            Text(showpass ? 'show password' : 'hide password'),
                        onPressed: () {
                          setState(() {
                            showpass = !showpass;
                          });
                        },
                      ),
                      hintText: "Enter password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent),
                      ),
                    ),
                    obscureText: showpass,
                    controller: passController,
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          login(emailController, passController, context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 32),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Sign(),
                                ));
                          },
                          child: Text("Create Account"))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
