import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: const Text("Home"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 40),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                      ),
                      prefixIconConstraints:
                          BoxConstraints(maxHeight: 20, minWidth: 25),
                      border: InputBorder.none,
                      hintText: ("Search"),
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ListTile(
                  onTap: () {
                    print("Clicked on item");
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tileColor: Colors.white,
                  leading: const Icon(
                    Icons.check_box,
                    color: Colors.blue,
                  ),
                  title: const Text(
                    "chech mail",
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                    child: IconButton(
                      color: Colors.white,
                      iconSize: 22,
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        print("Clicked on delete");
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.orange,
          child: ListView(children: [
            DrawerHeader(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 236, 160, 46)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset('assets/images/sobi.jpeg',
                        height: 70, width: 70),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text("Soban malik"),
                  Padding(padding: EdgeInsets.all(3)),
                  Text("sobanmalik1212@gmail.com"),
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                    // leading: ClipRRect(
                    //     child: Image.network(
                    //         "data:image/jpeg;base64,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YB5c5pnt3/qFZ2MqVBRqU7p033WmX+2z++BLL2cT68GF6/axF+vYkkkhpWmRVHPJPAx8YcYmk89m9o83F+qfrQxWJx2FpxUKEQirxlzubi58kjvzpJHHmXH/ALbcgNhvrzuo3FO5uqlalHEZPOP/AHnkygnGKTCIi0TMIiIAiIgCIiAIiIAiIgOPqLC/T+LsYw2DWE0kDzKIxLt0Tw/bhLm9v3rZxGP+isZjsd0vTeJ12QdLwcHScP6XDudv1rfRXOvUdFUM/LnOPXjJGFnIREVJIREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEVG9b+rfQMJ7m38wnW/q30DCe5t/MIC8kVG9b+rfQMJ7m38wnW/q30DCe5t/MIC8kVG9b+rfQMJ7m38wnW/q30DCe5t/MIC8kVG9b+rfQMJ7m38wnW/q30DCe5t/MIC8kVG9b+rfQMJ7m38wnW/q30DCe5t/MIC8kVG9b+rfQMJ7m38wnW/q30DCe5t/MIC8kVG9b+rfQMJ7m38wnW/q30DCe5t/MIC8kVG9b+rfQMJ7m38wnW/q30DCe5t/MIC8kVG9b+rfQMJ7m38wnW/q30DCe5t/MIC8kVG9b+rfQMJ7m38wnW/q30DCe5t/MIC8kVG9b+rfQMJ7m38wnW/q30DCe5t/MIC8kVG9b+rfQMJ7m38wnW/q30DCe5t/MIC8kVG9b+rfQMJ7m38wnW/q30DCe5t/MIC8kVG9b+rfQMJ7m38wvLrZ1j/scX/Z5fioD/9k=")),
                    title: Text(
                  "page 1",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: Text(
                  "page 2",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
