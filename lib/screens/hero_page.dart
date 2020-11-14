import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  List<Widget> _widgets;
  double _height;

  HeroPage.withWidgets(List<Widget> widgets, double height) {
      _widgets = widgets;
      _height = height;
  }

  @override
  _HeroPageState createState() => _HeroPageState.withWidgets(_widgets, _height);
}

class _HeroPageState extends State<HeroPage> {
  List<Widget> _widgets;
  double _height = 100;

  _HeroPageState.withWidgets(List<Widget> widgets, double height) {
      _widgets = widgets;
      _height = height > _height ? height : _height;
  }
  @override
  Widget build(BuildContext context) {
    return CustomScrollView (
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text("SKY")),
          expandedHeight: 320,
          bottom: PreferredSize(                       // Add this code
            preferredSize: Size.fromHeight(10.0),      // Add this code
            child: Text(''),                           // Add this code
          ),                                           // Add this code
          flexibleSpace: FlexibleSpaceBar(
              background: Container(
                  child: Column(
                      children: [
                        Image.network("https://images.contentstack.io/v3/assets/blt67d444169971fbeb/bltcdc721a8156cf5ae/5f3cdcc43ebefc321efdcf5c/MSA_Product_Tiles_Sports_PremierLeague.jpg"),
                        Container(
                            child: Text("This is some body text here to see how it responds to a very long section of text.", style: TextStyle(color: Colors.white,
                              fontSize: 14.0,
                            )),
                            margin: EdgeInsets.fromLTRB(8, 8, 0, 0)
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: FlatButton(
                                      color: Colors.blue,
                                      child: Center(child: Text("Go to Sky Go",  style: TextStyle(color: Colors.white,
                                        fontSize: 14.0,
                                      ))),
                                      onPressed: () {},
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
                                      child: Center(child: Text("Download Sky Go",  style: TextStyle(color: Colors.white,
                                        fontSize: 14.0,
                                      ))),
                                      onPressed: () {},
                                    )
                                )
                            )
                          ],
                        )
                      ]
                  )
              )
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
              _widgets
          ),
        )
      ],

    );
  }
}
