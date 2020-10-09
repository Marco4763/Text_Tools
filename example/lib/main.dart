import 'package:flutter/material.dart';
import 'package:text_tools/text_tools.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String result = "Click the Button";

  void usePackage() {
    setState(() {

      //This will put the first letter in UpperCase, will print 'Name'
      print(TextTools.toUppercaseFirstLetter(text: 'name'));

      //This will put the letter in position 1 in UpperCase, will print 'nAme'
      print(TextTools.toUppercaseAnyLetter(text: 'name', position: 1));

      //This will put the first letter in LowerCase, will print 'nAME'
      print(TextTools.toLowercaseFirstLetter(text: 'NAME'));

      //This will put the letter in position 1 in LowerCase, will print 'NaME'
      print(TextTools.toLowercaseAnyLetter(text: 'NAME'));

      //This will remove all letters in the String, will print '123'
      print(TextTools.removeLettersFromString(text: 'name123'));

      //This will remove the letter 'a' in the String, will print 'nme123'
      print(TextTools.removeLetterFromString(text: 'name123', letter: 'a'));

      //This will remove all numbers in the String, will print 'name'
      print(TextTools.removeNumbersFromString(text: 'name123'));

      //This will remove the number '1' in the String, will print 'name'
      print(TextTools.removeNumberFromString(text: 'name123', number: 1));

      result = "${TextTools.toUppercaseFirstLetter(text: 'name')} \n ${TextTools.toUppercaseAnyLetter(text: 'name', position: 1)} \n ${TextTools.toLowercaseFirstLetter(text: 'NAME')} \n ${TextTools.toLowercaseAnyLetter(text: 'NAME')} \n ${TextTools.removeLettersFromString(text: 'name123')} \n ${TextTools.removeLetterFromString(text: 'name123', letter: 'a')} \n ${TextTools.removeNumbersFromString(text: 'name123')} \n ${TextTools.removeNumberFromString(text: 'name123', number: 1)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is the result from this package:',
            ),
            Text(
              '$result',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: usePackage,
        child: Icon(Icons.check_circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}