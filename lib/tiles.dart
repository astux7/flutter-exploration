import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class BillTile extends StatefulWidget {
  @override
  _BillTileState createState() => _BillTileState();
}

// primary tile with buttons
class _BillTileState extends State<BillTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            trailing: Image.network("https://static.skyassets.com/contentstack/assets/blt67d444169971fbeb/bltbfb3e789f0a415a1/5d94a166f465290ff354893d/bill_icon.png",) ,
            title:  Text(
              'Your TV Bill',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            subtitle: Text(
                '\n27 Oct 2020 - 26 Nov 2020\nBill Total: £90.0 Payment due: 27 Oct 2020',
                style: TextStyle(color: Colors.black.withOpacity(0.6),
                  fontSize: 14.0,
                )
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          // ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: FlatButton(
                        color: Colors.blue,
                        child: Center(child: Text("View Bill",  style: TextStyle(color: Colors.white,
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
                      onPressed: () {},
                      child:  Center(child: Text('Pay Now',  style: TextStyle(color: Colors.blue,
                        fontSize: 14.0,
                      ))),
                    ),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}

// primary tile without buttons
class MessageCenterTile extends StatefulWidget {
  @override
  _MessageCenterTileState createState() => _MessageCenterTileState();
}

class _MessageCenterTileState extends State<MessageCenterTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            trailing: Image.network("https://static.skyassets.com/contentstack/assets/blt67d444169971fbeb/blt86928b0db1f902c4/5e1f04a4e87f911158735419/Email.png",) ,
            title: const Text(
              'Message Center',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            subtitle: Text(
              '\nYou have no unread messages in your message centre',
              style: TextStyle(color: Colors.black.withOpacity(0.6),
              fontSize: 14.0,
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
          ),
        ],
      ),
    );
  }
}

// content tile
class SkyBoxTile extends StatefulWidget {
  @override
  _SkyBoxTileState createState() => _SkyBoxTileState();
}

class _SkyBoxTileState extends State<SkyBoxTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.network("https://static.skyassets.com/storage/lily/shop_home/ShopHome_Hero_StarWars.jpg"),
          ListTile(
            title: const Text(
              'Sky Cinema',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            subtitle: Text(
                '\nA New premiere every day',
                style: TextStyle(color: Colors.black.withOpacity(0.6),
                  fontSize: 14.0,
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}


// content tile
class SkyVipTile extends StatefulWidget {
  @override
  _SkyVipTileState createState() => _SkyVipTileState();
}

class _SkyVipTileState extends State<SkyVipTile> {
  @override
  Widget build(BuildContext context) {

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.network("https://assets.contentstack.io/v3/assets/blt67d444169971fbeb/blt26310b84a7afdc9b/5e580e339c1f570dcb33e912/EPG_-_Q_Top_Picks_-_HS_-_1428X803.jpg"),
          ListTile(
             subtitle: SizedBox(
                   height: 2,
                  child: MarkdownBody(data: "asta **ASTA** asta")
             )
            // title: const Text(
            //   'Join Sky Vip',
            //   style: TextStyle(
            //     fontSize: 20.0,
            //   ),
            // ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}