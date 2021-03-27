import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Profile Demo',
      home: new MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return new Stack(
      children: <Widget>[
        new Container(
          color: Colors.brown[200],
        ),
        new Scaffold(
            appBar: new AppBar(
              title: new Text(widget.title),
              centerTitle: false,
              elevation: 0.0,
              backgroundColor: Colors.transparent,
            ),
            drawer: new Drawer(
              child: new Container(),
            ),
            backgroundColor: Colors.transparent,
            body: new Center(
              child: new Column(
                children: <Widget>[
                  new SizedBox(
                    height: _height / 12,
                  ),
                  new CircleAvatar(
                      radius: _width < _height ? _width / 4 : _height / 4,
                      backgroundImage: NetworkImage(
                          'https://scontent.fcgk27-1.fna.fbcdn.net/v/t1.0-9/57345622_2054561234851817_7561046558876106752_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGd5ZneR-zkKptiEf9a5dr4ZG_yc_QzzM9kb_Jz9DPMz_Fj4rKI6OoaHZcpBhzUfudcqa6yh5h3Tn6aNuOD395t&_nc_ohc=zFIf_53W-mwAX-9jhng&_nc_ht=scontent.fcgk27-1.fna&oh=2e079a1d2f804d41bb8e9a1ee53b5d1b&oe=608308CD')),
                  new SizedBox(
                    height: _height / 25.0,
                  ),
                  new Text(
                    'Muhammad Rifki',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: _width / 15,
                        color: Colors.white),
                  ),
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Container(
                          padding: EdgeInsets.all(5.0),
                          width: 300.0,
                          height: 35.0,
                          margin: EdgeInsets.all(10.0),
                          child: new Text(
                            ' Mahasiswa ',
                            style: new TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        new Container(
                          margin: EdgeInsets.all(5),
                          height: 1,
                          width: 80,
                          color: Colors.white,
                        ),
                        Card(
                            color: Colors.white,
                            margin: EdgeInsets.only(
                                left: 25, right: 25, top: 20, bottom: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.phone,
                                  size: 30,
                                  color: Colors.brown[200],
                                ),
                                title: Text(
                                  '+6289501582233',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.brown[200]),
                                ))),
                        Card(
                            color: Colors.white,
                            elevation: 0.0,
                            margin: EdgeInsets.only(left: 25, right: 25),
                            child: ListTile(
                                leading: Icon(
                                  Icons.email,
                                  size: 30,
                                  color: Colors.brown[200],
                                ),
                                title: Text(
                                  'muhammadhusein081@gmail.com',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.brown[200]),
                                ))),
                      ])
                ],
              ),
            ))
      ],
    );
  }
}
