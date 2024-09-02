import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: playstore(),
  ));
}

List<Map<String, dynamic>> games = [
  {
    "index": "1",
    "name": "Deadpool",
    "des": "Marvel at these fantastic super hero games",
    "img": "assets/deadpool.jpg",
    "icon": "assets/deadpoolicon.jpg",
    "color": Colors.white60,
    "type": "Netmarble •  Roleplaying",
    "gb": "9.4 GB",
  },
  {
    "index": "2",
    "name": "Golf Battle",
    "des": "Marvel at these fantastic super hero games",
    "img": "assets/golf.jpg",
    "icon": "assets/golfbattle.jpg",
    "color": Colors.lightGreen,
    "type": "Game • dummy",
    "gb": "9 GB",
  },
  {
    "index": "3",
    "name": "Subway",
    "des": "Marvel at these fantastic super hero games",
    "img": "assets/subway.jpg",
    "icon": "assets/subwayicon.jpg",
    "color": Colors.lightBlue,
    "type": "Game • dummy",
    "gb": "23 GB",
  },
  {
    "index": "4",
    "name": "BGMI",
    "des": "Marvel at these fantastic super hero games",
    "img": "assets/pubg.jpg",
    "icon": "assets/pubgicon.jpg",
    "color": Colors.grey,
    "type": "Game • dummy",
    "gb": "4 GB",
  },
  {
    "index": "5",
    "name": "Talking Tom ",
    "des": "Marvel at these fantastic super hero games",
    "img": "assets/talkingtom.jpg",
    "icon": "assets/talkingtomicon.jpg",
    "color": Colors.green,
    "type": "Game • dummy",
    "gb": "2.1 GB",
  },
  {
    "index": "6",
    "name": "Candy crush",
    "des": "Marvel at these fantastic super hero games",
    "img": "assets/candycrush.jpg",
    "icon": "assets/candycrushicon.jpg",
    "color": Colors.pink,
    "type": "Game • dummy",
    "gb": "94 GB",
  },
  {
    "index": "7",
    "name": "Cross word",
    "des": "Marvel at these fantastic super hero games",
    "img": "assets/crossword.jpg",
    "icon": "assets/crosswordicon.jpg",
    "color": Colors.grey,
    "type": "Game • dummy",
    "gb": "100 MB",
  },
  {
    "index": "8",
    "name": "Temple run ",
    "des": "Marvel at these fantastic super hero games",
    "img": "assets/templerun.jpg",
    "icon": "assets/templerunicon.jpg",
    "color": Colors.green,
    "type": "Game • dummy",
    "gb": "150 MB",
  },
  {
    "index": "9",
    "name": "Free Fire ",
    "des": "Marvel at these fantastic super hero games",
    "img": "assets/freefire.jpg",
    "icon": "assets/freefireicon.jpg",
    "color": Colors.green,
    "type": "Game • dummy",
    "gb": "150 MB",
  },
  {
    "index": "10",
    "name": "Chess ",
    "des": "Marvel at these fantastic super hero games",
    "img": "assets/chess.jpg",
    "icon": "assets/chessicon.jpg",
    "color": Colors.green,
    "type": "Game • dummy",
    "gb": "150 MB",
  },
  {
    "index": "11",
    "name": "Spirit Run",
    "des": "Marvel at these fantastic super hero games",
    "img": "assets/spiritrun.jpg",
    "icon": "assets/spiritrunicon.jpg",
    "color": Colors.green,
    "type": "Game • dummy",
    "gb": "150 MB",
  },
  {
    "index": "12",
    "name": "Coin master",
    "des": "Marvel at these fantastic super hero games",
    "img": "assets/coinmaster.jpg",
    "icon": "assets/coinmastericon.jpg",
    "color": Colors.green,
    "type": "Game • dummy",
    "gb": "150 MB",
  },
];

class playstore extends StatefulWidget {
  const playstore({super.key});

  @override
  State<playstore> createState() => _playstoreState();
}

class _playstoreState extends State<playstore> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
            height: 20,
            width: 20,
            padding: EdgeInsets.all(8),
            child: Image.asset(
              "assets/google-play.png",
            ),
          ),
          actions: [
            Icon(Icons.notifications_none_outlined),
            SizedBox(width: 20),
            CircleAvatar(
              foregroundImage: AssetImage("assets/profile.jpg"),
            ),
            SizedBox(width: 30),
          ],
          bottom: TabBar(
              labelPadding: EdgeInsets.all(10),
              isScrollable: true,
              indicatorColor: Color(0xff094fca),
              labelColor: Color(0xff094fca),
              tabs: [
                Tab(text: "For you"),
                Tab(text: "Top charts"),
                Tab(text: "Children"),
                Tab(text: "Premium"),
                Tab(text: "Categories"),
              ]),
        ),
        body: TabBarView(
          children: [
            Foryou(),
            Topchart(),
            Children(),
            Premium(),
            Categories(),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          indicatorColor: Color(0xffc3e7ff),
          selectedIndex: 3,
          indicatorShape: OvalBorder(),
          destinations: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => playstore()));
                  },
                  icon: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/game-console.png"),
                  ),
                ),
                Text("Games"),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => playstore()));
                  },
                  icon: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/apps.png"),
                  ),
                ),
                Text("Apps"),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Search()));
                  },
                  icon: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/search.png"),
                  ),
                ),
                Text("Search"),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Offers()));
                  },
                  icon: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/tag.png"),
                  ),
                ),
                Text("Offers"),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Books()));
                  },
                  icon: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/agenda.png"),
                  ),
                ),
                Text("Books"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Foryou extends StatefulWidget {
  const Foryou({super.key});

  @override
  State<Foryou> createState() => _ForyouState();
}

class _ForyouState extends State<Foryou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 370,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...games.map((e) => Container(
                                height: 330,
                                width: MediaQuery.of(context).size.width - 20,
                                margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),),
                                  borderRadius: BorderRadius.circular(15),
                                  color: e["color"],
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(e["img"]),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      // child: Image.asset(e["img"],
                                      // fit: BoxFit.cover,),
                                    ),
                                    Text(e["des"],
                                        style: TextStyle(
                                          fontSize: 16,
                                        )),
                                    Container(
                                      height: 100,
                                      width: double.infinity,
                                      // color: Colors.amber,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            child: Image.asset(e["icon"],
                                                fit: BoxFit.cover),
                                            margin: EdgeInsets.all(10),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                e["name"],
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(e["type"]),
                                              Text(e["gb"]),
                                            ],
                                          ),
                                          SizedBox(width: 40),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Text("Install"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Sponsored . ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Suggested for You",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 140),
                    Icon(Icons.more_vert),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 350,
                      width: double.infinity,
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio:
                            (350 / 3) / (MediaQuery.of(context).size.width),
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...games.map(
                            (e) => Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              // margin: EdgeInsets.all(5),
                              // color: e["color"],
                              child: Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(e["icon"])),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                      height: 100,
                                      width: 250,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            e["name"],
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(e["type"]),
                                          Text(e["gb"]),
                                        ],
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  height: 370,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...games.map((e) => Container(
                                height: 330,
                                width: MediaQuery.of(context).size.width - 20,
                                margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(e["img"]),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                      width: double.infinity,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            child: Image.asset(e["icon"],
                                                fit: BoxFit.cover),
                                            margin: EdgeInsets.all(10),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                e["name"],
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(e["type"]),
                                              Text(e["gb"]),
                                            ],
                                          ),
                                          SizedBox(width: 40),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Text("Install"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Sponsored . ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Suggested for You",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 140),
                    Icon(Icons.more_vert),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 350,
                      width: double.infinity,
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio:
                            (350 / 3) / (MediaQuery.of(context).size.width),
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...games.map(
                            (e) => Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              // margin: EdgeInsets.all(5),
                              // color: e["color"],
                              child: Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(e["icon"])),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                      height: 100,
                                      width: 250,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            e["name"],
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(e["type"]),
                                          Text(e["gb"]),
                                        ],
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Topchart extends StatefulWidget {
  const Topchart({super.key});

  @override
  State<Topchart> createState() => _TopchartState();
}

class _TopchartState extends State<Topchart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      child: ListView(
        children: [
          ...games.map(
            (e) => Container(
              height: 90,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(width: 40),
                  Text(
                    e["index"],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(e["icon"])),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                      height: 100,
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            e["name"],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(e["type"]),
                          Text(e["gb"]),
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class Children extends StatefulWidget {
  const Children({super.key});

  @override
  State<Children> createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      child: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/garden.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 200,
                        margin: EdgeInsets.all(15),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Teacher Approved",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  )),
                              Text(
                                "Handpicked for quality",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        height: 90,
                        width: 400,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Browse by age",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text("Ages upto 5")),
                                ),
                                Container(
                                  height: 30,
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text("Ages 6-8")),
                                ),
                                Container(
                                  height: 30,
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text("Ages 9-12")),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New & Updated"),
                      Icon(Icons.arrow_back),
                    ],
                  )),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...games.map(
                          (e) => Container(
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.all(2),
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Column(children: [
                              Container(
                                height: 90,
                                width: 90,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(e["icon"])),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Text(e["name"]),
                              Text("4.3★")
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.indigo,
                child: Column(
                  children: [
                    Container(
                        height: 50,
                        width: double.infinity,
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("New & Updated"),
                            Icon(Icons.arrow_back),
                          ],
                        )),
                    Column(
                      children: [
                        Container(
                          height: 180,
                          width: double.infinity,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ...games.map(
                                (e) => Container(
                                  padding: EdgeInsets.all(2),
                                  margin: EdgeInsets.all(2),
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  child: Column(children: [
                                    Container(
                                      height: 90,
                                      width: 90,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(e["icon"])),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Text(e["name"]),
                                    Text("4.3★")
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New & Updated"),
                      Icon(Icons.arrow_back),
                    ],
                  )),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...games.map(
                          (e) => Container(
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.all(2),
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Column(children: [
                              Container(
                                height: 90,
                                width: 90,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(e["icon"])),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Text(e["name"]),
                              Text("4.3★")
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New & Updated"),
                      Icon(Icons.arrow_back),
                    ],
                  )),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...games.map(
                          (e) => Container(
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.all(2),
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Column(children: [
                              Container(
                                height: 90,
                                width: 90,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(e["icon"])),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Text(e["name"]),
                              Text("4.3★")
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New & Updated"),
                      Icon(Icons.arrow_back),
                    ],
                  )),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...games.map(
                          (e) => Container(
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.all(2),
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Column(children: [
                              Container(
                                height: 90,
                                width: 90,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(e["icon"])),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Text(e["name"]),
                              Text("4.3★")
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New & Updated"),
                      Icon(Icons.arrow_back),
                    ],
                  )),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...games.map(
                          (e) => Container(
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.all(2),
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Column(children: [
                              Container(
                                height: 90,
                                width: 90,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(e["icon"])),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Text(e["name"]),
                              Text("4.3★")
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New & Updated"),
                      Icon(Icons.arrow_back),
                    ],
                  )),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...games.map(
                          (e) => Container(
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.all(2),
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Column(children: [
                              Container(
                                height: 90,
                                width: 90,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(e["icon"])),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Text(e["name"]),
                              Text("4.3★")
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

class Premium extends StatefulWidget {
  const Premium({super.key});

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      child: ListView(
        children: [
          Column(children: [
            Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("New & Updated"),
                    Icon(Icons.arrow_back),
                  ],
                )),
            Column(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...games.map(
                        (e) => Container(
                          padding: EdgeInsets.all(2),
                          margin: EdgeInsets.all(2),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Column(children: [
                            Container(
                              height: 90,
                              width: 90,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(e["icon"])),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Text(e["name"]),
                            Text("4.3★")
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
          Container(
            height: 370,
            width: double.infinity,
            child: Stack(
              children: [
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...games.map((e) => Container(
                          height: 330,
                          width: MediaQuery.of(context).size.width - 20,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(e["img"]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              Container(
                                height: 100,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      child: Image.asset(e["icon"],
                                          fit: BoxFit.cover),
                                      margin: EdgeInsets.all(10),
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          e["name"],
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(e["type"]),
                                        Text(e["gb"]),
                                      ],
                                    ),
                                    SizedBox(width: 40),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Install"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
          Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New & Updated"),
                  Icon(Icons.arrow_back),
                ],
              )),
          Column(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...games.map(
                      (e) => Container(
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.all(2),
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Column(children: [
                          Container(
                            height: 90,
                            width: 90,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image:
                                  DecorationImage(image: AssetImage(e["icon"])),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Text(e["name"]),
                          Text("4.3★")
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New & Updated"),
                      Icon(Icons.arrow_back),
                    ],
                  )),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...games.map(
                          (e) => Container(
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.all(2),
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Column(children: [
                              Container(
                                height: 90,
                                width: 90,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(e["icon"])),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Text(e["name"]),
                              Text("4.3★")
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.indigo,
                child: Column(
                  children: [
                    Container(
                        height: 50,
                        width: double.infinity,
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("New & Updated"),
                            Icon(Icons.arrow_back),
                          ],
                        )),
                    Column(
                      children: [
                        Container(
                          height: 180,
                          width: double.infinity,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ...games.map(
                                (e) => Container(
                                  padding: EdgeInsets.all(2),
                                  margin: EdgeInsets.all(2),
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  child: Column(children: [
                                    Container(
                                      height: 90,
                                      width: 90,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(e["icon"])),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Text(e["name"]),
                                    Text("4.3★")
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New & Updated"),
                      Icon(Icons.arrow_back),
                    ],
                  )),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...games.map(
                          (e) => Container(
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.all(2),
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Column(children: [
                              Container(
                                height: 90,
                                width: 90,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(e["icon"])),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Text(e["name"]),
                              Text("4.3★")
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Map<String, dynamic>> categories = [
    {
      "img": "assets/helicopter.png",
      "category": "Action",
    },
    {
      "img": "assets/adventure.png",
      "category": "Adventure",
    },
    {
      "img": "assets/joystick.png",
      "category": "Arcade",
    },
    {
      "img": "assets/board-game.png",
      "category": "Board",
    },
    {
      "img": "assets/card.png",
      "category": "Card",
    },
    {
      "img": "assets/carrom.png",
      "category": "Casino",
    },
    {
      "img": "assets/casual.png",
      "category": "Casual",
    },
    {
      "img": "assets/graduation-cap.png",
      "category": "Educational",
    },
    {
      "img": "assets/music.png",
      "category": "Music",
    },
    {
      "img": "assets/plugin.png",
      "category": "Puzzle",
    },
    {
      "img": "assets/racing-flag.png",
      "category": "Racing",
    },
    {
      "img": "assets/sword.png",
      "category": "Role playing",
    },
    {
      "img": "assets/gaming.png",
      "category": "Simulation",
    },
    {
      "img": "assets/tennis.png",
      "category": "Sports",
    },
    {
      "img": "assets/strategy.png",
      "category": "Strategy",
    },
    {
      "img": "assets/lightbulb.png",
      "category": "Trivia",
    },
    {
      "img": "assets/scrabble.png",
      "category": "Word",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        ...categories.map((e) => Container(
              height: 70,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(width: 50),
                  Container(
                    height: 30,
                    width: 30,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(e["img"])),
                    ),
                  ),
                  Text(e["category"]),
                ],
              ),
            ))
      ],
    ));
  }
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                              ),
                            ),
                            Icon(Icons.mic),
                            SizedBox(width: 20),
                            CircleAvatar(
                              foregroundImage: AssetImage("assets/profile.jpg"),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  margin: EdgeInsets.all(18),
                  child: Text(
                    "You might like",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
      

          ],
        ),
      ),
    );
  }
}

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  List<Map<String, dynamic>> books = [
    {
      "name": "Reminders of him",
      "img": "assets/b1.jpg",
      "amt": "215",
    },
    {
      "name": "The Alchemist",
      "img": "assets/b2.jpg",
      "amt": "199",
    },
    {
      "name": "It Ends with us",
      "img": "assets/b3.jpg",
      "amt": "399",
    },
    {
      "name": "It starts with us",
      "img": "assets/b4.jpg",
      "amt": "399",
    },
    {
      "name": "Fake it till you Bake it",
      "img": "assets/b5.jpg",
      "amt": "440",
    },
    {
      "name": "Confess",
      "img": "assets/b6.jpg",
      "amt": "234",
    },
    {
      "name": "Roald Dahl",
      "img": "assets/b7.jpg",
      "amt": "99",
    },
    {
      "name": "Story of Struggle",
      "img": "assets/b8.jpg",
      "amt": "279",
    },
    {
      "name": "Until Love Sets us Apart",
      "img": "assets/b9.jpg",
      "amt": "120",
    },
    {
      "name": "The Fault in our Stars",
      "img": "assets/b10.jpg",
      "amt": "399",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      child: ListView(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Recent price drop",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Icon(Icons.arrow_back),
              ],
            ),
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...books.map(
                  (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            width: 200,
                            child: Image.asset(
                              e["img"],
                              fit: BoxFit.cover,
                            ),
                            padding: EdgeInsets.all(5),
                          ),
                          SizedBox(height: 5),
                          Text(
                            e["name"],
                            style: TextStyle(fontSize: 13),
                          ),
                          Row(
                            children: [
                              Text("Rs."),
                              Text(e["amt"]),
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
          Container(
            height: 90,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Top sellers",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Most popular on Google play",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Icon(Icons.arrow_back),
              ],
            ),
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...books.map(
                  (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            width: 200,
                            child: Image.asset(
                              e["img"],
                              fit: BoxFit.cover,
                            ),
                            padding: EdgeInsets.all(5),
                          ),
                          SizedBox(height: 5),
                          Text(
                            e["name"],
                            style: TextStyle(fontSize: 13),
                          ),
                          Row(
                            children: [
                              Text("Rs."),
                              Text(e["amt"]),
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
          Container(
            height: 90,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Start your free preveiw",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Read sample first buy later",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Icon(Icons.arrow_back),
              ],
            ),
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...books.map(
                  (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            width: 200,
                            child: Image.asset(
                              e["img"],
                              fit: BoxFit.cover,
                            ),
                            padding: EdgeInsets.all(5),
                          ),
                          SizedBox(height: 5),
                          Text(
                            e["name"],
                            style: TextStyle(fontSize: 13),
                          ),
                          Row(
                            children: [
                              Text("Rs."),
                              Text(e["amt"]),
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
          Container(
            height: 90,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "New releases",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Ebooks to add to the shelf",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Icon(Icons.arrow_back),
              ],
            ),
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...books.map(
                  (e) => Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            width: 200,
                            child: Image.asset(
                              e["img"],
                              fit: BoxFit.cover,
                            ),
                            padding: EdgeInsets.all(5),
                          ),
                          SizedBox(height: 5),
                          Text(
                            e["name"],
                            style: TextStyle(fontSize: 13),
                          ),
                          Row(
                            children: [
                              Text("Rs."),
                              Text(e["amt"]),
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
