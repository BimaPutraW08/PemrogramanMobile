import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      // body: Center(
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child: Column(
      //     // Column is also a layout widget. It takes a list of children and
      //     // arranges them vertically. By default, it sizes itself to fit its
      //     // children horizontally, and tries to be as tall as its parent.
      //     //
      //     // Column has various properties to control how it sizes itself and
      //     // how it positions its children. Here we use mainAxisAlignment to
      //     // center the children vertically; the main axis here is the vertical
      //     // axis because Columns are vertical (the cross axis would be
      //     // horizontal).
      //     //
      //     // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
      //     // action in the IDE, or press "p" in the console), to see the
      //     // wireframe for each widget.
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     // children: <Widget>[
      //     //   const Text(
      //     //     'You have pushed the button this many times:',
      //     //   ),
      //     //   Text(
      //     //     '$_counter',
      //     //     style: Theme.of(context).textTheme.headlineMedium,
      //     //   ),
      //     // ],
      //   ),
      // ),
      body: Stack(
        children: <Widget>[
          // Container(
          //   color: Colors.grey[50],
          //   margin: EdgeInsets.only(left: 30.0),
          //   alignment: Alignment.center,
          //   child: Text("Berita Terbaru",
          //       style: TextStyle(fontSize: 15, color: Colors.black)),
          //   height: 40.0,
          //   width: 220,
          // ),
          // Container(
          //   color: Colors.grey[50],
          //   margin: EdgeInsets.only(left: 200.0),
          //   alignment: Alignment.center,
          //   child: Text("Pertandingan Hari ini",
          //       style: TextStyle(fontSize: 15, color: Colors.black)),
          //   height: 40.0,
          //   width: 220,
          // ),
          Container(
            margin: EdgeInsets.only(top: 40.0), // Atur margin sesuai kebutuhan
            child: Image(
              image: NetworkImage(
                  'https://cdn.dribbble.com/users/34919/screenshots/1615729/attachments/251132/HeroIllustration_Progress7.jpg'),
              width: 100.0,
              height: 100.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50.0), // Atur margin sesuai kebutuhan
            child: Image(
              image: NetworkImage(
                  'https://seeklogo.com/images/L/link-aja-logo-F029ED0939-seeklogo.com.png'),
              height: 100.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50.0, left:200), // Atur margin sesuai kebutuhan
            child: Image(
              image: NetworkImage(
                  'https://th.bing.com/th/id/OIP.LGez-yLvYTB2iaxZtTaZIQAAAA?pid=ImgDet&rs=1'),
              height: 50.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50.0, left:250), // Atur margin sesuai kebutuhan
            child: Image(
              image: NetworkImage(
                  'https://th.bing.com/th/id/R.2a90ce34c16c8b7316aa331875165758?rik=eRtoChLmquohEQ&riu=http%3a%2f%2fjwofficialroblox.weebly.com%2fuploads%2f1%2f1%2f7%2f5%2f117541374%2fhaberdasher-icon-1_1_orig.png&ehk=X1vzqY3TSUsUxf1whmGizx2Ik61a6J5Oa5Ir%2fd5XAJ8%3d&risl=&pid=ImgRaw&r=0'),
              height: 50.0,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10.0),
            ),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 100.0, left: 10.0),
            child: Text(
              "HI, SOFYAN NOOR ARIEF,S.ST, M.KOM.",
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            height: 150.0,
            width: 340,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 150.0, left: 30.0),
            child: Text("\t\t\tYour Balance \n\t\t\tRp.10.184",
                style: TextStyle(fontSize: 12, color: Colors.black)),
            height: 70.0,
            width: 100.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 150.0, left: 140.0),
            child: Text("\t\t\tBonus Balance \n\t\t\t0",
                style: TextStyle(fontSize: 12, color: Colors.black)),
            height: 70.0,
            width: 100.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 280.0, left: 10.0),
            // child: Text(
            //   "HI, SOFYAN NOOR ARIEF,S.ST, M.KOM.",
            //   style: TextStyle(fontSize: 20, color: Colors.white),
            //   textAlign: TextAlign.center,
            // ),
            height: 80.0,
            width: 340,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(10.0),
            ),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 650.0, left: 10.0),
            // child: Text(
            //   "HI, SOFYAN NOOR ARIEF,S.ST, M.KOM.",
            //   style: TextStyle(fontSize: 20, color: Colors.white),
            //   textAlign: TextAlign.center,
            // ),
            height: 2.0,
            width: 340,
          ),
          // Container(
          //   margin: EdgeInsets.only(top: 400.0), // Atur margin sesuai kebutuhan
          //   child: Image(
          //     image: NetworkImage(
          //         'https://th.bing.com/th/id/R.e53daa47a25eb5b28c59cf7b3c174ac1?rik=PChhihMhPejqew&riu=http%3a%2f%2fi.dailymail.co.uk%2fi%2fpix%2f2017%2f04%2f23%2f22%2f3F8A1FFC00000578-0-image-m-17_1492983700591.jpg&ehk=VfRXI9lHgKnXp%2f5wwJXV%2bSsrlHX22iDMI0fc%2fIwOl9Q%3d&risl=&pid=ImgRaw&r=0'),
          //     width: 250,
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.only(top: 470.0), // Atur margin sesuai kebutuhan
          //   child: Image(
          //     image: NetworkImage(
          //         'https://th.bing.com/th/id/R.e53daa47a25eb5b28c59cf7b3c174ac1?rik=PChhihMhPejqew&riu=http%3a%2f%2fi.dailymail.co.uk%2fi%2fpix%2f2017%2f04%2f23%2f22%2f3F8A1FFC00000578-0-image-m-17_1492983700591.jpg&ehk=VfRXI9lHgKnXp%2f5wwJXV%2bSsrlHX22iDMI0fc%2fIwOl9Q%3d&risl=&pid=ImgRaw&r=0'),
          //     width: 250,
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.only(top: 500.0), // Atur margin sesuai kebutuhan
          //   child: Image(
          //     image: NetworkImage(
          //         'https://th.bing.com/th/id/R.e53daa47a25eb5b28c59cf7b3c174ac1?rik=PChhihMhPejqew&riu=http%3a%2f%2fi.dailymail.co.uk%2fi%2fpix%2f2017%2f04%2f23%2f22%2f3F8A1FFC00000578-0-image-m-17_1492983700591.jpg&ehk=VfRXI9lHgKnXp%2f5wwJXV%2bSsrlHX22iDMI0fc%2fIwOl9Q%3d&risl=&pid=ImgRaw&r=0'),
          //     width: 250,
          //   ),
          // ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
