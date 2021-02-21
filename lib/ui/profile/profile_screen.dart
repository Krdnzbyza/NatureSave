import 'package:flutter/material.dart';

class ProfilScreen extends StatefulWidget {
  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(flex: 3, child: buildContainerPart()),
        Expanded(child: buildContainerPoint()),
        Expanded(flex: 5, child: buildAllMethod()),
      ]),
    );
  }

  Container buildContainerPart() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.green, Colors.green.shade300],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.5, 0.9],
      )),
      child: buildPersonAvatar(),
    );
  }

  Column buildPersonAvatar() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.white38,
                    minRadius: 35.0,
                    child: Icon(Icons.call, size: 30.0)),
                CircleAvatar(
                    backgroundColor: Colors.white70,
                    minRadius: 60.0,
                    child: Icon(Icons.person)),
                CircleAvatar(
                    backgroundColor: Colors.white38,
                    minRadius: 35.0,
                    child: Icon(Icons.message, size: 30.0))
              ]),
          SizedBox(
            height: 10,
          ),
          Text('Beyza Karadeniz',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ))
        ]);
  }

  ListView buildAllMethod() {
    return ListView(
      children: <Widget>[builContainerInformation()],
    );
  }

  Container builContainerInformation() {
    return Container(
      child: buildColumn(),
    );
  }

  Column buildColumn() {
    return Column(
      children: <Widget>[
        ListTile(
            title: Text('City',
                style: TextStyle(
                  color: Colors.green.shade300,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text('Trabzon', style: TextStyle(fontSize: 18))),
        Divider(),
        ListTile(
            title: Text('Date',
                style: TextStyle(
                  color: Colors.green.shade300,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text('21.02.2020', style: TextStyle(fontSize: 18))),
        Divider(),
        ListTile(
            title: Text('Product',
                style: TextStyle(
                  color: Colors.green.shade300,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text('Paper', style: TextStyle(fontSize: 18))),
      ],
    );
  }

  Container buildContainerPoint() {
    return Container(child: buildDifferentOption());
  }

  Row buildDifferentOption() {
    return Row(children: <Widget>[
      Expanded(
          child: Container(
              color: Colors.green.shade300,
              child: ListTile(
                  title: Text('0',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      )),
                  subtitle: Text('Point',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                      ))))),
      Expanded(
          child: Container(
              color: Colors.green,
              child: ListTile(
                  title: Text('0',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      )),
                  subtitle: Text('Awards',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                      )))))
    ]);
  }
}
