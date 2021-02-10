import 'package:flutter/material.dart';

class FirstDesing extends StatelessWidget {
  const FirstDesing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 5,
            ),
          ),
          child: ListView(
            children: [
              _buildHeader(),
              _buildTitle(),
              _buildInfo(),
              _buildContent(),
            ],
          ),
        ),
      ),
    );
  }

  //Widget #1
Widget _buildHeader() {
  return Container(
    width: double.infinity,
    color: Colors.red,
    child: Image.network(
        'https://i.pinimg.com/originals/1a/07/ad/1a07ad2f18567b3fb3d1fce758b7aee4.jpg'),
  );
}

  //Widget #2
  Widget _buildTitle() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.cyanAccent,
          width: 5,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lago con un puente',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Un lago con un puente'),
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                Text(
                  '41',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


//Widget #3
Widget _buildInfo() {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(
      color: Colors.orange,
      width: 5,
    )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildIcons(iconData: Icons.call, info: 'Call'),
        _buildIcons(iconData: Icons.near_me, info: 'ROUTE'),
        _buildIcons(iconData: Icons.share, info: 'SHARE'),
      ],
    ),
  );
}


//Widget #3
Widget _buildIcons({IconData iconData, String info}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
    child: Column(
      children: [
        Icon(
          iconData,
          color: Colors.blue,
        ),
        Text(
          info,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

//List <Widget> buildList() {
//  final list = List<int>.generate(25, (i) => i+1);
//  return list.map((e) {
//    return ListTile(
//      title: Text('title $e'),
//    );
//  }).toList();
//}

//widget #4
Widget _buildContent(){
  final list = List<int>.generate(5, (i) => i+1);
  return Column(
    children: list.map((e) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 25.0),
        child: Text('Culpa ipsum anim nostrud eu nulla nisi sunt consectetur dolore elit elit dolor. Ex sint est adipisicing quis anim. Minim ullamco Lorem nostrud excepteur commodo laboris elit voluptate. Quis est eiusmod voluptate mollit. Incididunt occaecat ad enim fugiat id ea officia veniam deserunt voluptate duis ipsum laboris sit. Minim anim sit elit ad irure.',textAlign: TextAlign.justify,),
      );
    }).toList()
  );
}

