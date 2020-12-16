import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkDownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Markdown"),
      ),
      body: FutureBuilder(
          future: rootBundle.loadString("assets/example.md"),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              return Markdown(data: snapshot.data);
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
// class OutsideBankHourDescription extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     String text =
//         "Antecipações em __horários__ bancários acontecem em 1h na média. __Fora do horário bancário__ o saldo estará em sua conta __no dia seguinte.__";
//
//     return Expanded(
//       child: Container(
//         alignment: Alignment.center,
//         child: Markdown(
//           styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)),
//           data: text,
//         ),
//       ),
//     );
//   }
// }
