import 'package:flutter/material.dart';

class SecondDesing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(102, 215, 255, 1.0),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pagina1(),
          _pagina2(context),
        ],
      ),
    );
  }

  Widget _pagina1() {
    final TextStyle styleText = TextStyle(fontSize: 45, color: Colors.white);

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/img/scroll-1.png',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Text(
                '11°',
                style: styleText,
              ),
              Text(
                'Miercoles',
                style: styleText,
              ),
              Expanded(child: Container()),
              Icon(
                Icons.keyboard_arrow_down,
                size: 80,
                color: Colors.white,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _pagina2(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'third');
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
