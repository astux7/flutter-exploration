import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';


class MarkdownVip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: rootBundle.loadString("assets/example.md"),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Markdown(data: snapshot.data,
             // padding: EdgeInsets.all(15.0),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
