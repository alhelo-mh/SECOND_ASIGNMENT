import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'SECOND ASIGNMENT';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _portraitMode() {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(166, 129, 4, 167),
      ),
      backgroundColor: Colors.red,
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 240, 212, 212).withOpacity(0.5),
        child: ListView(
          padding: EdgeInsets.only(top: 160),
          children: [
            ListTile(
              title: Text('FIRST ELEMENT',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('SECOND ELEMENT',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
                //  print('object');
              },
            ),
            ListTile(
              title: const Text('THIRD ELEMENT',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('FORTH ELEMENT',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('FIFTHE ELEMENT',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _landscapeMode() {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(166, 129, 4, 167),
      ),
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
                child: Container(
              child: ListView(
                padding: EdgeInsets.only(top: 20),
                children: [
                  ListTile(
                    title: Text('FIRST ELEMENT',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                  ListTile(
                    title: const Text('SECOND ELEMENT',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                  ListTile(
                    title: const Text('THIRD ELEMENT',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                  ListTile(
                    title: const Text('FORTH ELEMENT',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                  ListTile(
                    title: const Text('FIFTHE ELEMENT',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                ],
              ),
              color: Colors.white,
            )),
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _portraitMode();
          } else {
            return _landscapeMode();
          }
        },
      ),
    );
  }
}
