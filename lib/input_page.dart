import 'package:flutter/material.dart';
import 'package:launcher_practice/input_model.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<InputModel>(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: model.controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    suffixIcon: InkWell(
                      child: Icon(Icons.cancel),
                      onTap: model.deleteEmail,
                    )
                  ),
                  onChanged: (value) => model.email = value,
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
      ),
    );
  }
}
