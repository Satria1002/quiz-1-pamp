import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final List<String> imgSlider = [
    'gambarnya (1).jpg',
    'gambarnya (2).jpg',
    'gambarnya (3).jpg',
    'gambarnya (4).jpg',
    'gambarnya (5).jpg'
  ];

  final CarouselSlider autoPlayImage = CarouselSlider(
    items: imgSlider.map((fileImage) {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            'assets/${fileImage}',
            width: 10000,
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList(),
    height: 150,
    autoPlay: true,
    enlargeCenterPage: true,
    aspectRatio: 6 / 3,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo penggunaan scaffold'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications), onPressed: () {})
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            autoPlayImage,
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Text(
                "Halo, Pengunjung",
                style: TextStyle(
                    color: Colors.blueAccent[200],
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              height: 150.0,
              width: 100.0,
              decoration: new BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 3,
                    // changes position of shadow
                  )
                ],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.home,
                                size: 38,
                                color: Colors.black,
                              ),
                              onPressed: null),
                          Text("data")
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.home,
                                size: 38,
                                color: Colors.black,
                              ),
                              onPressed: null),
                          Text("dataaa")
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.home,
                                size: 38,
                                color: Colors.black,
                              ),
                              onPressed: null),
                          Text("data")
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.home,
                                size: 38,
                                color: Colors.black,
                              ),
                              onPressed: null),
                          Text("data")
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.home,
                                size: 38,
                                color: Colors.black,
                              ),
                              onPressed: null),
                          Text("data")
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.home,
                                size: 38,
                                color: Colors.black,
                              ),
                              onPressed: null),
                          Text("data")
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Text("Berita terkini"),
            ),
            SafeArea(
              child: Container(
                margin: EdgeInsets.all(10.0),
                height: 200.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 3,
                      // changes position of shadow
                    )
                  ],
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: ListView(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.album,
                              size: 45,
                            ),
                            title: Text('Berita A'),
                            subtitle: Text('Best of 2000'),
                          )
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.album,
                              size: 45,
                            ),
                            title: Text('Berita B'),
                            subtitle: Text('Best of 2000'),
                          )
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.album,
                              size: 45,
                            ),
                            title: Text('Berita C'),
                            subtitle: Text('Best of 2000'),
                          )
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.album,
                              size: 45,
                            ),
                            title: Text('Berita C'),
                            subtitle: Text('Best of 2000'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50,
          child: Row(
            children: [
              Icon(
                Icons.home,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {}),
        tooltip: 'Cek tekan',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: new BoxDecoration(
                  color: Colors.deepOrange[300],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 3,
                      // changes position of shadow
                    )
                  ],
                  borderRadius: BorderRadius.circular(5.0),
                ),
              accountName: Text('FILKOM UB'),
              accountEmail: Text('filkom@ub.ac.id'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text('ABC'),
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
              height: 80.0,
              padding: EdgeInsets.all(3.0),
              decoration: new BoxDecoration(
                  color: Colors.deepOrange[300],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 3,
                      // changes position of shadow
                    )
                  ],
                  borderRadius: BorderRadius.circular(5.0),
                ),

                child: Text("Desain Aplikasi ini terinspirasi oleh aplikasi milik Universitas brawijaya yaitu'Gapura UB'"),
            ),
            
            ListTile(
              title: Text('Inbox'),
              leading: IconButton(icon: Icon(Icons.mail), onPressed: (){}),
            ),
            ListTile(
              title: Text('Social'),
              leading: IconButton(icon: Icon(Icons.people), onPressed: (){}),
            ),
            ListTile(title: Text('Info'), leading: IconButton(icon: Icon(Icons.info), onPressed: (){}),)
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
