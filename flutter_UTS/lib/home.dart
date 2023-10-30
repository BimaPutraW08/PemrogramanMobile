import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const webLinkAja());
}

class webLinkAja extends StatelessWidget {
  const webLinkAja({super.key});

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: false,
      ),
      home: const MyHomePage(title: ''),
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
      // appBar: AppBar(
      //   // TRY THIS: Try changing the color here to a specific color (to
      //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      //   // change color while the other colors stay the same.
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
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
            margin: EdgeInsets.only(top: 0.0), // Atur margin sesuai kebutuhan
            child: Opacity(
              opacity:
                  0.7, // Ganti nilai ini sesuai dengan tingkat opasitas yang Anda inginkan (antara 0.0 hingga 1.0)
              child: Image(
                image: NetworkImage(
                    'https://cdn.dribbble.com/users/34919/screenshots/1615729/attachments/251132/HeroIllustration_Progress7.jpg'),
                width: 360.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 60.0, left: 10.0), // Atur margin sesuai kebutuhan
            child: Image(
              image: NetworkImage(
                  'https://seeklogo.com/images/L/link-aja-logo-F029ED0939-seeklogo.com.png'),
              height: 40.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 60.0, left: 260), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  5.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://th.bing.com/th/id/OIP.LGez-yLvYTB2iaxZtTaZIQAAAA?pid=ImgDet&rs=1'),
                height: 40.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 60.0, left: 310), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  5.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://th.bing.com/th/id/R.2a90ce34c16c8b7316aa331875165758?rik=eRtoChLmquohEQ&riu=http%3a%2f%2fjwofficialroblox.weebly.com%2fuploads%2f1%2f1%2f7%2f5%2f117541374%2fhaberdasher-icon-1_1_orig.png&ehk=X1vzqY3TSUsUxf1whmGizx2Ik61a6J5Oa5Ir%2fd5XAJ8%3d&risl=&pid=ImgRaw&r=0'),
                height: 40.0,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.red[600],
              borderRadius: BorderRadius.circular(10.0),
            ),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 115.0, left: 10.0),
            child: Text(
              "\n\t\t\t\t\tHI, BIMA PUTRA WICAKSONO.",
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            height: 140.0,
            width: 340,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 165.0, left: 30.0),
            child: Text("\t\t\tYour Balance \n\t\t\tRp.10.184",
                style: TextStyle(fontSize: 12, color: Colors.black)),
            height: 70.0,
            width: 120.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 165.0, left: 170.0),
            child: Text("\t\t\tBonus Balance \n\t\t\t0",
                style: TextStyle(fontSize: 12, color: Colors.black)),
            height: 70.0,
            width: 120.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 270.0, left: 10.0),
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
              color: Colors.white,
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 280.0, left: 20.0),
            child: Text(
              "Top Up",
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 75,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 280.0, left: 101.0),
            child: Text(
              "Send Money",
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 75,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 280.0, left: 182.0),
            child: Text(
              "Tiket Code",
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 75,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 280.0, left: 263.0),
            child: Text(
              "See All",
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 75,
          ),
          Container(
            // top up
            margin: EdgeInsets.only(
                top: 288.0, left: 38), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  7.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://assets-global.website-files.com/606317d685e6b189218df406/6077e2fd773584d131f43938_card%20details.png'),
                height: 37.0,
              ),
            ),
          ),
          Container(
            // send money
            margin: EdgeInsets.only(
                top: 293.0, left: 125), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  7.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://static-00.iconduck.com/assets.00/money-send-icon-256x256-g379qh12.png'),
                height: 27.0,
              ),
            ),
          ),
          Container(
            // send money
            margin: EdgeInsets.only(
                top: 290.0, left: 203), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  7.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://th.bing.com/th/id/OIP.X-Op3JgwdSTxgNdhB12l2AHaHa?pid=ImgDet&w=174&h=174&c=7&dpr=1,7'),
                height: 33.0,
              ),
            ),
          ),
          Container(
            // see all
            margin: EdgeInsets.only(
                top: 293.0, left: 286), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  7.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://www.comparetravelinsurance.com.au/assets/upload/product-choice.png'),
                height: 29.0,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 365.0, left: 20.0),
            child: Text(
              "Pulsa/Data",
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 75,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 365.0, left: 101.0),
            child: Text(
              "Electricity",
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 75,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 365.0, left: 182.0),
            child: Text(
              "BPJS",
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 75,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 365.0, left: 263.0),
            child: Text(
              "mgames",
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 75,
          ),
          Container(
            // pulsa data
            margin: EdgeInsets.only(
                top: 375.0, left: 38), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  7.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://th.bing.com/th/id/OIP.MEqAahGe94Xmvk7ZetslQgAAAA?pid=ImgDet&w=174&h=174&c=7&dpr=1,7'),
                height: 37.0,
              ),
            ),
          ),
          Container(
            // electricity
            margin: EdgeInsets.only(
                top: 375.0, left: 123), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  7.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://th.bing.com/th/id/OIP.K3mfsVvtl6oYaNMp_pU7XgAAAA?pid=ImgDet&w=174&h=174&c=7&dpr=1,7'),
                height: 31.0,
              ),
            ),
          ),
          Container(
            // bpjs
            margin: EdgeInsets.only(
                top: 375.0, left: 203), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  7.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://cdn.icon-icons.com/icons2/777/PNG/512/clipboard_icon-icons.com_64660.png'),
                height: 33.0,
              ),
            ),
          ),
          Container(
            // mgames
            margin: EdgeInsets.only(
                top: 375.0, left: 285), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  7.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://cdn4.iconfinder.com/data/icons/devices-gaming/24/xb-controller-256.png'),
                height: 33.0,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 443.0, left: 20.0),
            child: Text(
              "Cable Tv & Internet",
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 72,
            width: 75,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 443.0, left: 101.0),
            child: Text(
              "PDAM",
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 75,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 443.0, left: 182.0),
            child: Text(
              "Kartu Uang Electronik",
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 72,
            width: 75,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 443.0, left: 260.0),
            child: Text(
              "More",
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 75,
          ),
          Container(
            // Cable
            margin: EdgeInsets.only(
                top: 445.0, left: 38), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  2.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://th.bing.com/th/id/OIP.fGa5ShwPLufrz2U_inAu6AHaHa?pid=ImgDet&w=174&h=174&c=7&dpr=1,7'),
                height: 37.0,
              ),
            ),
          ),
          Container(
            // pdam
            margin: EdgeInsets.only(
                top: 450.0, left: 122), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  7.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://th.bing.com/th/id/OIP.Kxb9w-DhfsGFnHxFbl9RQwHaHa?w=183&h=183&c=7&r=0&o=5&dpr=1.7&pid=1.7'),
                height: 33.0,
              ),
            ),
          ),
          Container(
            // kartu uang
            margin: EdgeInsets.only(
                top: 445.0, left: 203), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  2.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://static.thenounproject.com/png/2172997-200.png'),
                height: 33.0,
              ),
            ),
          ),
          Container(
            // more
            margin: EdgeInsets.only(
                top: 445.0, left: 270), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  7.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://media.istockphoto.com/vectors/triple-dots-icon-vector-three-dots-as-a-symbol-of-menu-interface-or-vector-id1396048367?k=20&m=1396048367&s=170667a&w=0&h=_lao_0w5Wd4zybk1QkiCRqweStCEYQgcFIsxGxbw1Ec='),
                height: 34.0,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 420.0), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  9.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://www.telkomsel.com/sites/default/files/box_media/left/desktop/PulsaInternetBRI_800x450.jpg'),
                width: 260.0,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(10.0),
            ),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 715.0, left: 10.0),
            height: 1.5,
            width: 340,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 717.0, left: 26.0),
            child: Text(
              "Home",
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 60,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 717.0, left: 84.0),
            child: Text(
              "History",
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 60,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 695.0, left: 150.0),
            child: Text(
              "Pay",
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 75,
            width: 60,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 717.0, left: 222.0),
            child: Text(
              "Inbox",
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 60,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(0.0),
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 717.0, left: 278.0),
            child: Text(
              "Account",
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            height: 62,
            width: 60,
          ),
          Container(
            //account
            margin: EdgeInsets.only(
                top: 727.0, left: 290), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  5.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://www.cfhp.com.au/wp-content/uploads/2021/09/person.png'),
                height: 30.0,
              ),
            ),
          ),
          Container(
            //inbox
            margin: EdgeInsets.only(
                top: 725.0, left: 230), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  3.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://eickhofcolumbaria.com/wp-content/uploads/2020/10/envelope.png'),
                height: 35.0,
              ),
            ),
          ),
          Container(
            //pay
            margin: EdgeInsets.only(
                top: 700.0, left: 155), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  5.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://d1qb2nb5cznatu.cloudfront.net/startups/i/20383-6e4a24f0e930efcbe846c1b1d221c33f-medium_jpg.jpg?buster=1381253791'),
                height: 50.0,
              ),
            ),
          ),
          Container(
            //history
            margin: EdgeInsets.only(
                top: 727.0, left: 103), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  1.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://www.servicenow.com/content/dam/servicenow/images/home-asset/icons/icon-ebook.png'),
                height: 30.0,
              ),
            ),
          ),
          Container(
            // home
            margin: EdgeInsets.only(
                top: 725.0, left: 37), // Atur margin sesuai kebutuhan
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  7.0), // Ganti nilai sesuai dengan besar radius yang Anda inginkan
              child: Image(
                image: NetworkImage(
                    'https://www.betco.com/images/default-source/icons/icon_lodging_53x53.png?sfvrsn=2'),
                height: 37.0,
              ),
            ),
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
