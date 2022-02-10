import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mynewapp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Mynewapp extends StatefulWidget {
  const Mynewapp({Key? key}) : super(key: key);

  @override
  _MynewappState createState() => _MynewappState();
}

class _MynewappState extends State<Mynewapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text('App Bar')],
        ),
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                
                
                accountName: Text('kobir'),
                accountEmail: Text('01727507239'),
                currentAccountPicture: CircleAvatar(
                
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2021/12/15/19/50/wreath-6873312_960_720.jpg'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.facebook),
                title: Text('Facebook'),
                tileColor: Color(0xFF7223c2),
              ),
              ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text('Unit'),
                tileColor: HexColor('#b6e2f0'),

               
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: HexColor("#960b32"),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('Hello buddy!',
                                textStyle: TextStyle(fontSize: 20)),
                                FadeAnimatedText('text'),
                                ScaleAnimatedText('scale'),
                                
                          ],
                          repeatForever: true,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
