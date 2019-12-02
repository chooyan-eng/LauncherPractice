import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 24),
              InkWell(
                child: Text(
                  'Open example webpage',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.red,
                  ),
                ),
                onTap: () async {
                  await launch('https://google.co.jp');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
