import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int i = 0;

  makeCall({String? number}) async {
    final Uri call = Uri(scheme: 'tel', path: number);
    await launchUrl(call);
  }

  makemasage({String? massege}) async {
    final Uri sms = Uri(scheme: 'sms', path: massege);
    await launchUrl(sms);
  }

  makeemail({String? email}) async {
    final Uri mail = Uri(scheme: 'mailto', path: email);
    await launchUrl(mail);
  }

  List<Map<String, dynamic>> A = [
    {
      'color': Colors.green[200],
      'br': BorderRadius.only(
          topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
      'image': "assets/images/person.jpg",
      'border': Border.all(color: Colors.green, width: 3),
      'name': "Zeel Bharodiya",
      'num': "7621839795",
    },
    {
      'color': Colors.purpleAccent[100],
      'br': BorderRadius.only(
          topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      'image': "assets/images/person.jpg",
      'border': Border.all(color: Colors.purple, width: 3),
      'name': "Harshil Aslaliya",
      'num': "1234567898",
    },
    {
      'color': Colors.green[200],
      'br': BorderRadius.only(
          topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
      'image': "assets/images/person.jpg",
      'border': Border.all(color: Colors.green, width: 3),
      'name': "Parth Dhameliya",
      'num': "9313433309",
    },
    {
      'color': Colors.purpleAccent[100],
      'br': BorderRadius.only(
          topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      'image': "assets/images/person.jpg",
      'border': Border.all(color: Colors.purple, width: 3),
      'name': "Dharmik Daslani",
      'num': "1234567898",
    },
    {
      'color': Colors.green[200],
      'br': BorderRadius.only(
          topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
      'image': "assets/images/person.jpg",
      'border': Border.all(color: Colors.green, width: 3),
      'name': "Archit Vadsak",
      'num': "1234567898",
    },
    {
      'color': Colors.purpleAccent[100],
      'br': BorderRadius.only(
          topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      'image': "assets/images/person.jpg",
      'border': Border.all(color: Colors.purple, width: 3),
      'name': "Akash Dungarani",
      'num': "1234567898",
    },
    {
      'color': Colors.green[200],
      'br': BorderRadius.only(
          topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
      'image': "assets/images/person.jpg",
      'border': Border.all(color: Colors.green, width: 3),
      'name': "Kishan Gaudani",
      'num': "1234567898",
    },
    {
      'color': Colors.purpleAccent[100],
      'br': BorderRadius.only(
          topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      'image': "assets/images/person.jpg",
      'border': Border.all(color: Colors.purple, width: 3),
      'name': "Meet Bhayani",
      'num': "1234567898",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Contact Diary",
            style: TextStyle(fontSize: 23, color: Colors.orange),
          ),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ...A
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(left: 6, top: 6, right: 6),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          // color: e%2 == 0 ? Colors.white : Colors.purpleAccent[100],
                          color: e['color'],
                          // borderRadius: BorderRadius.horizontal(right: Radius.circular(15)),
                          borderRadius: e['br'],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: e['border'],
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("${e['image']}"),
                                  radius: 35,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "${e['name']}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "+91 ${e['num']}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Padding(
                                //   padding: EdgeInsets.only(top: 8.0, right: 8, bottom: 8, left: 65),
                                //   child: Icon(Icons.more_vert,color: Colors.cyan[800],size: 30,),
                                // ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 4, right: 8, bottom: 4, left: 65),
                                  child: PopupMenuButton(
                                    itemBuilder: (context) => [
                                      PopupMenuItem(
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                makeCall(number: e['num']);
                                              });
                                            },
                                            child: Text("Phone")),
                                        value: 1,
                                      ),
                                      PopupMenuItem(
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                makemasage(massege: e['num']);
                                              });
                                            },
                                            child: Text("Massage")),
                                        value: 2,
                                      ),
                                      PopupMenuItem(
                                        child: Text("Email"),
                                        value: 1,
                                      ),
                                      PopupMenuItem(
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() async {
                                              await Share.share(
                                                  "Name : ${e['num']}\nContact : ${e['num']}");
                                            });
                                          },
                                            child: Text("Share")),
                                        value: 1,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, right: 8, bottom: 8, left: 65),
                                  child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          makeCall(number: e['num']);
                                        });
                                      },
                                      child: Icon(
                                        Icons.phone,
                                        color: Colors.green[800],
                                        size: 30,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(

            child: Icon(
              Icons.arrow_circle_right_outlined,
              size: 40,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('Spage');
            }),
      ),
      // backgroundColor: Colors.purpleAccent,
    );
  }
}
