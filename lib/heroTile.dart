import 'package:flutter/material.dart';
//import 'package:lint/analysis_options.yaml';

class HeroTile extends StatefulWidget {
  @override
  _HeroTileState createState() => _HeroTileState();
}

class _HeroTileState extends State<HeroTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black12,
        child: Column(
          children: [
            Container(
              child: Text(
                  "Title",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold

                  )
              ),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://assets.contentstack.io/v3/assets/blt67d444169971fbeb/blt612f746319908583/5f29143fc9ec57071816c87e/TV_engineer_video_still.jpg"),
                    fit: BoxFit.fill
                ),
              ),
            ),
            Text(
                "This is some body text that I would like to see if it would trail over or not..."),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: FlatButton(
                          color: Colors.blue,
                          child: Center(child: Text("Primary")),
                          onPressed: () {

                          },
                        )
                    )
                ),
                Divider(thickness: 20),
                Expanded(
                    flex: 1,
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: FlatButton(
                          color: Colors.blue,
                          child: Center(child: Text("Secondary")),
                          onPressed: () {

                          },
                        )
                    )
                )
              ],
            )
          ],
        )
    );
  }
}
