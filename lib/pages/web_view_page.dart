import 'package:flutter/material.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebViewPage'),
      ),
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            child: Text('WebViewPage Go Back'),
          ),
        ),
      ),
    );
  }
}
