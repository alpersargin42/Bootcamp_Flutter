import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Ekle extends StatefulWidget {
  const Ekle({Key? key}) : super(key: key);

  @override
  _EkleState createState() => _EkleState();
}

class _EkleState extends State<Ekle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ekleme Sayfası'),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text('Geri'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
