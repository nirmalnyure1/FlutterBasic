import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReaderScreen extends StatefulWidget {
  final int chapterId;
  ReaderScreen(this.chapterId);
  @override
  _ReaderScreenState createState() => _ReaderScreenState();
}

WebViewController _webController;

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'chapter ' + widget.chapterId.toString(),
        ),
        backgroundColor: Colors.red[900],
      ),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _webController = webViewController;
          if (widget.chapterId == 1) {
            _loadHtmlChapter1();
          } else if (widget.chapterId == 2) {
            _loadHtmlChapter2();
          }

          //_loadHtmlChapter1();
        },
      ),
    );
  }
}

_loadHtmlChapter1() async {
  String fileText = await rootBundle.loadString('assets/chapter1.html');

  _webController.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadHtmlChapter2() async {
  String fileText = await rootBundle.loadString('assets/chapter2.html');

  _webController.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}
