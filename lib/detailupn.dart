import 'package:flutter/material.dart';
import 'detail.dart';

class Detailupn extends StatefulWidget {
  const Detailupn({super.key});

  @override
  State<Detailupn> createState() => _DetailupnState();
}

class _DetailupnState extends State<Detailupn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail UPNYK',
          style: TextStyle(fontSize: 50),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset('upn.jpg'),
                  Text(
                    detail,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
