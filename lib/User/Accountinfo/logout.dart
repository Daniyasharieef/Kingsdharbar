import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kings_dharbar1/User/Details/signin.dart';

import '../../main.dart';


class LogOutPage extends StatelessWidget {
  const LogOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            leading: IconButton(
              alignment: Alignment.topLeft,
              icon: const Icon(
                Icons.keyboard_arrow_left_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MyApp()));
              },
            ),centerTitle: true,
            title:const  Text("LOGOUT"),
          ),
          body: SafeArea(
            child: Center(
              child: Container(
                height: 250,
                width: 350,
                child: Card(
                  shadowColor: Colors.red,
                  color: Colors.red,
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "    You Will Not Receive Any Orders Once You LogOut",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 50),
                          TextButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          UserSignin  ()),
                                      (Route<dynamic> route) =>
                                  route is MyApp);
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.red[800],
                              backgroundColor: Colors.white,
                            ),
                            child: const Text("LOGOUT"),
                          ),
                          const SizedBox(width: 80),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => MyApp()));
                              },
                              style: TextButton.styleFrom(
                                primary: Colors.red[800],
                                backgroundColor: Colors.white,
                              ),
                              child: const Text("STAY LOGGED IN")),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
