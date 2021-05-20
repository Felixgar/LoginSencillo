import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppMaster Garcia',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IngresoSistema(),
    ); //fin de material app
  } //fin de widget build
} //fin de clase Login

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
} //fin clase ingresosistema

class _IngresoSistemaState extends State<IngresoSistema> {
  bool acceso = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
          actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
              icon: Icon(
                Icons.tune,
                semanticLabel: 'Filter',
              ),
              onPressed: () {
                print('Filter button');
              }),
        ],
        title: Text('Inicio de sesion Castillo'),
      ), //fin de appbar
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              SizedBox(height: 80.0),
              Column(
                children: <Widget>[
                  Image.asset('assets/diamond.png'),
                  SizedBox(height: 16.0),
                ],
              ),
              if (!acceso)
                {
                  Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          // fillColor: Colors.amber,
                          labelText: 'Username',
                        ),
                      ),
                      TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                      Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('CANCEL'),
                          onPressed: () {
                            setState(() {
                              acceso = false;
                            });
                          },
                        ),
                        RaisedButton(
                          child: Text(
                            'NEXT2',
                          ),
                          onPressed: () {
                            setState(() {
                              acceso = true;
                            });
                          },
                        ),
                      ],//fin de children
                    ),//fin de child
                  )//fin de padding
                    ], //fin de widget
                  ) //fin columna
                }
                else{
                  Center(
                child: Column(
                  children: <Widget>[
                    Text('YAY, I am login!'),
                    RaisedButton(
                      elevation: 20.0,
                      child: Text('Logout'),
                      onPressed: () {
                        setState(() {
                          isLogin = false;
                        });
                      },
                    )
                  ],
                ),
              )
                }
              
            ],
          ),
        ), //SafeArea
      ),
    ); //fin de scaffold
  }
} //fin class _IngresoSistema
