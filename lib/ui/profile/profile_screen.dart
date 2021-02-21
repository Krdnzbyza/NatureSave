import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:eva_icons_flutter/icon_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:naturesave/models/account.dart';
import 'package:naturesave/viewmodels/account_provider.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  AccountProvider _accountProvider;
  @override
  Widget build(BuildContext context) {
    _accountProvider = Provider.of<AccountProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: _accountProvider.currentAccount.avatar != null
                    ? NetworkImage(_accountProvider.currentAccount.avatar)
                    : null,
                child: _accountProvider.currentAccount.avatar != null
                    ? null
                    : Icon(EvaIcons.person),
                radius: 75.0,
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
