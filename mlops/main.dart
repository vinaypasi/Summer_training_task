import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

main() {
  runApp(MyApp());
}

late String cmd;
var r;
var url;
var response;

class MyApp extends StatefulWidget {
  /*web() async {
    var url = Uri.http("3.109.62.139", "cgi-bin/mlops2.py", {"x": cmd});
    var response = await http.get(url);
    // print(r);
r = response.body;
    print(r);
//print(cmd);
  }
  */
  lw() async {
    print("MLOPS");
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("MlOps Platform"),
          ),
          actions: [IconButton(onPressed: null, icon: Icon(Icons.engineering))],
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                Text("Name"),
                TextField(
                    style: TextStyle(color: Colors.grey.shade900),
                    onChanged: (value) {
                      cmd = value;
                    },
                    //autocorrect: false,
                    //textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      )),
                    )),
                TextButton(
                    onPressed: () async {
                      var url = Uri.http(
                          "3.109.62.139", "cgi-bin/mlops2.py", {"x": cmd});
                      var response = await http.get(url);
                      // print(r);
                      setState(() {
                        r = response.body;
                        print(r);
                      });

                      //print(cmd);
                    },
                    child: Text("Enter")),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  padding: EdgeInsets.only(top: 50.0, left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        r ?? "",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            // backgroundColor: Colors.black87,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
