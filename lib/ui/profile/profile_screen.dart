import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:eva_icons_flutter/icon_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:naturesave/models/account.dart';

class ProfileScreen extends StatefulWidget {
  final Account account;

  const ProfileScreen({Key key, this.account}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: widget.account.avatar != null
                    ? NetworkImage(widget.account.avatar)
                    : null,
                child: widget.account.avatar != null
                    ? null
                    : Icon(EvaIcons.person),
                radius: 80.0,
              ),
              Text('Beyza Karadeniz',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 24, color: Colors.black)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.brown,
                        radius: 32,
                        child: Text(
                          '50',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Puan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.brown,
                        radius: 32,
                        child: Text(
                          '100',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Bağış',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ))
                    ],
                  )
                ],
              ),
              Container(
                height: 400.0,
                width: double.infinity,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
