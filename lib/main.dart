import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/hwan.jpg'),
              ),
              Text(
                'Hwan Seok Kang',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'CTO',
                style: TextStyle(
                    fontFamily: 'SansPro',
                    fontSize: 20,
                    color: Colors.teal.shade100,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade50,
                  thickness: 1,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        size: 50,
                        color: Colors.teal,
                      ),
                      title: Text(
                        "+82 010 6430 6352",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                            fontFamily: 'SansPro',
                            fontSize: 24),
                      )),
                ),
              ),
              Card(
                margin: EdgeInsets.fromLTRB(50, 0, 50, 30),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 50,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "tttkhs@naver.com",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                          fontFamily: 'SansPro',
                          fontSize: 24),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
