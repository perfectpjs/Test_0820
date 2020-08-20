import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stateful',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times',
              style:
              TextStyle(
                  fontSize: 17.0),),
              SizedBox(
                height: 10.0,
              ),
              Text('$counter',
                style: Theme.of(context).textTheme.headline4,),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    child: Icon(Icons.arrow_upward),
                    onPressed: (){
                      setState(() {
                        counter++;
                        print('$counter');
                      });
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  FloatingActionButton(
                    child: Icon(Icons.arrow_downward),
                    onPressed: (){
                      setState(() {
                        counter--;
                        print('$counter');
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
