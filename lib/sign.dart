import 'package:flutter/material.dart';
import 'package:test/function/function.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  final TextEditingController Email = TextEditingController();
  final TextEditingController Pass = TextEditingController();
  final TextEditingController Confirmedpass = TextEditingController();

  bool showpasss = true;

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
            "sign up",
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
                    Icons.contact_page_outlined,
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
                    controller: Email,
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: TextButton(
                        child:
                            Text(showpasss ? 'show password' : 'hide password'),
                        onPressed: () {
                          setState(() {
                            showpasss = !showpasss;
                          });
                        },
                      ),
                      hintText: "Enter password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent),
                      ),
                    ),
                    obscureText: showpasss,
                    controller: Pass,
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: TextButton(
                        child:
                            Text(showpasss ? 'show password' : 'hide password'),
                        onPressed: () {
                          setState(() {
                            showpasss = !showpasss;
                          });
                        },
                      ),
                      hintText: "Enter confirmed  password",
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent),
                      ),
                    ),
                    obscureText: showpasss,
                    controller: Confirmedpass,
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          signup(Confirmedpass, Email, Pass, context);
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
                          "sign up",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
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
