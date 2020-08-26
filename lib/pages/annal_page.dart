import 'package:flutter/material.dart';

class AnnalPage extends StatefulWidget {
  @override
  _AnnalPageState createState() => _AnnalPageState();
}

class _AnnalPageState extends State<AnnalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('记账'),
      ),
    );
  }
}
