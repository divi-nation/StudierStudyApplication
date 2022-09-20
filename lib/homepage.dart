import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:StudierStudyApplication/utilities/group_card.dart';
import 'package:StudierStudyApplication/create_group.dart';
import 'package:StudierStudyApplication/foreignfiles/settingtitle.dart';
import 'package:StudierStudyApplication/Adminpage.dart';

import 'apis/api.dart';

dynamic group_location_store;
dynamic group_name_store;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List groupsForYou = [
    // groupname
    ['Koders', 'Online', 'lib/icons/list.png', 'ff17'],
    ['Koders', 'Online', 'lib/icons/list.png', 'ff17'],
    ['Koders', 'Online', 'lib/icons/list.png', 'ff17'],
  ];

  TextEditingController grp_name_Ctl = TextEditingController();
  TextEditingController grp_loc_Ctl = TextEditingController();

  _register() {
    var data = {
      'grp_name': grp_name_Ctl.text,
      'grp_loc': grp_loc_Ctl.text,
    };

    // var res = CallApi().postData(data, 'register');
  }

  //get bottomNavigationBar => null;
  int currentIndex = 0;

  final double coverHeight = 50;
  final double profileHeight = 75;
  final double right = 20;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.13;
    final top = (height * 0.6) - profileHeight / 2;
    final double statcardHeight = MediaQuery.of(context).size.height * 0.12;

//
//Scaffold
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      //Body
      body: Stack(
        children: [
          if (currentIndex == 0)
            /* ================== DISPLAY HOMEPAGE ==================== */
            ListView(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
//Cover Image and Profile Image
                Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      buildCoverImage(height),
                      Positioned(
                          top: top, right: right, child: buildProfileImage()),
                    ]),
                const SizedBox(height: 5),

//Greating Text
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: const Text(
                    'Hi Divine',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: const Text(
                    'Ready to learn?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 31, 35, 36),
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

//Group Cards
                Container(
                  height: height * 2.00,
                  child: ListView.builder(
                      itemCount: groupsForYou.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return group_card(
                          group_name: groupsForYou[index][0],
                          group_state: groupsForYou[index][1],
                          group_image: groupsForYou[index][2],
                          group_location: groupsForYou[index][3],
                        );
                      }),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),

//Main Buttons
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = 6;
                          });
                        },

//Create Button
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200],
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  color: Color.fromARGB(34, 0, 0, 0),
                                ),
                              ]),
                          width: MediaQuery.of(context).size.width * 0.30,
                          height: MediaQuery.of(context).size.height * 0.29,
                          child: Column(children: [
//Button Icon
                            Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              child: Icon(Icons.add_circle_outline_sharp,
                                  size: 50, color: Colors.black),
                            ),
                            Column(
                              children: [
                                Container(
//Button Main Text
                                  child: Text(
                                    'Create',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.09,
                                ),

//Button SubText
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Text(
                                      'create a new study group',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ]),
                        ),
                      ),

//Second Button
                      Column(
                        children: [
//Top Second Button
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = 5;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey[200],
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 10,
                                      spreadRadius: 10,
                                      color: Color.fromARGB(34, 0, 0, 0),
                                    ),
                                  ]),
                              width: MediaQuery.of(context).size.width * 0.30,
                              height: MediaQuery.of(context).size.height * 0.14,
                              child: Column(children: [
                                //Icon
                                Container(
                                  height: height * 0.07,
                                  child: Icon(Icons.auto_graph_sharp,
                                      size: 30, color: Colors.black),
                                ),
                                SizedBox(
                                  height: height * 0.25,
                                ),
                                //Text 1
                                Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        'Stats',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.04,
                                    ),
                                    //Text 2
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Text(
                                          'your Study Statistics',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                          ),

                          SizedBox(
                            height: height * 0.08,
                          ),

//Bottom Second Button
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = 8;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey[200],
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 10,
                                      spreadRadius: 10,
                                      color: Color.fromARGB(34, 0, 0, 0),
                                    ),
                                  ]),
                              width: MediaQuery.of(context).size.width * 0.30,
                              height: MediaQuery.of(context).size.height * 0.14,
                              child: Column(children: [
                                //Icon
                                Container(
                                  height: height * 0.07,
                                  child: Icon(Icons.people_outline_rounded,
                                      size: 30, color: Colors.black),
                                ),
                                SizedBox(
                                  height: height * 0.25,
                                ),
                                //Text 1
                                Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        'Join',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.04,
                                    ),
                                    //Text 2
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        child: Text(
                                          'join an ongoing study group',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

/* =======================    DISPLAY STATISTICS PAGE =====================  */
          if (currentIndex == 5)
/* ======================= DISPLAY STATISTICS PAGE =====================  */

            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = 0;
                        });
                      },
                      child: Container(
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    Text(
                      'Study Statistics',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 51, 129, 182),
                      ),
                    ),
                    Container(),
                  ],
                ),

//Stats Cards

                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200],
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  color: Color.fromARGB(34, 0, 0, 0),
                                ),
                              ]),
                          height: statcardHeight,
                          width: MediaQuery.of(context).size.width * 0.76,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.swipe_right_rounded),
                                Center(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: statcardHeight * 0.2,
                                      ),
                                      Text(
                                        'Group Studies Taken',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 128, 145),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '23',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 64, 73),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200],
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  color: Color.fromARGB(34, 0, 0, 0),
                                ),
                              ]),
                          height: statcardHeight,
                          width: MediaQuery.of(context).size.width * 0.76,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.bar_chart,
                                ),
                                Center(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: statcardHeight * 0.2,
                                      ),
                                      Text(
                                        'Groups Created',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 128, 145),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '11',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 64, 73),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200],
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  color: Color.fromARGB(34, 0, 0, 0),
                                ),
                              ]),
                          height: statcardHeight,
                          width: MediaQuery.of(context).size.width * 0.76,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.flip_camera_android_outlined),
                                Center(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: statcardHeight * 0.2,
                                      ),
                                      Text(
                                        'Groups Joined',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 128, 145),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '12',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 64, 73),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200],
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  color: Color.fromARGB(34, 0, 0, 0),
                                ),
                              ]),
                          height: statcardHeight,
                          width: MediaQuery.of(context).size.width * 0.76,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.timelapse),
                                Center(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: statcardHeight * 0.2,
                                      ),
                                      Text(
                                        'Total Study Time',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 128, 145),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '123 Hrs',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 64, 73),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),

/* =======================    DISPLAY JOIN GROUP PAGE =====================  */
          if (currentIndex == 8)
/* ======================= DISPLAY JOIN GROUP PAGE PAGE =====================  */

            ListView(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = 0;
                        });
                      },
                      child: Container(
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    Text(
                      'Join Group',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 51, 129, 182),
                      ),
                    ),
                    Container(),
                  ],
                ),

//Stats Cards

                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200],
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  color: Color.fromARGB(34, 0, 0, 0),
                                ),
                              ]),
                          height: 90,
                          width: MediaQuery.of(context).size.width * 0.76,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'The Nerds',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 128, 145),
                                          fontSize: 25,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color.fromARGB(
                                                255, 0, 110, 124),
                                            size: 12,
                                          ),
                                          Text(
                                            'Main Library',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 84, 95),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timelapse_outlined,
                                            color: Color.fromARGB(
                                                255, 0, 105, 119),
                                            size: 12,
                                          ),
                                          Text(
                                            '86 mins left',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 84, 95),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200],
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  color: Color.fromARGB(34, 0, 0, 0),
                                ),
                              ]),
                          height: 90,
                          width: MediaQuery.of(context).size.width * 0.76,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'The Nerds',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 128, 145),
                                          fontSize: 25,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color.fromARGB(
                                                255, 0, 110, 124),
                                            size: 12,
                                          ),
                                          Text(
                                            'Main Library',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 84, 95),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timelapse_outlined,
                                            color: Color.fromARGB(
                                                255, 0, 105, 119),
                                            size: 12,
                                          ),
                                          Text(
                                            '86 mins left',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 84, 95),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200],
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  color: Color.fromARGB(34, 0, 0, 0),
                                ),
                              ]),
                          height: 90,
                          width: MediaQuery.of(context).size.width * 0.76,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'The Nerds',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 128, 145),
                                          fontSize: 25,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color.fromARGB(
                                                255, 0, 110, 124),
                                            size: 12,
                                          ),
                                          Text(
                                            'Main Library',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 84, 95),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timelapse_outlined,
                                            color: Color.fromARGB(
                                                255, 0, 105, 119),
                                            size: 12,
                                          ),
                                          Text(
                                            '86 mins left',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 84, 95),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200],
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  color: Color.fromARGB(34, 0, 0, 0),
                                ),
                              ]),
                          height: 90,
                          width: MediaQuery.of(context).size.width * 0.76,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'The Nerds',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 128, 145),
                                          fontSize: 25,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color.fromARGB(
                                                255, 0, 110, 124),
                                            size: 12,
                                          ),
                                          Text(
                                            'Main Library',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 84, 95),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timelapse_outlined,
                                            color: Color.fromARGB(
                                                255, 0, 105, 119),
                                            size: 12,
                                          ),
                                          Text(
                                            '86 mins left',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 84, 95),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200],
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  color: Color.fromARGB(34, 0, 0, 0),
                                ),
                              ]),
                          height: 90,
                          width: MediaQuery.of(context).size.width * 0.76,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'The Nerds',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 128, 145),
                                          fontSize: 25,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color.fromARGB(
                                                255, 0, 110, 124),
                                            size: 12,
                                          ),
                                          Text(
                                            'Main Library',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 84, 95),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timelapse_outlined,
                                            color: Color.fromARGB(
                                                255, 0, 105, 119),
                                            size: 12,
                                          ),
                                          Text(
                                            '86 mins left',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 84, 95),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200],
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                  color: Color.fromARGB(34, 0, 0, 0),
                                ),
                              ]),
                          height: 90,
                          width: MediaQuery.of(context).size.width * 0.76,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'The Nerds',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 128, 145),
                                          fontSize: 25,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color.fromARGB(
                                                255, 0, 110, 124),
                                            size: 12,
                                          ),
                                          Text(
                                            'Main Library',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 84, 95),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timelapse_outlined,
                                            color: Color.fromARGB(
                                                255, 0, 105, 119),
                                            size: 12,
                                          ),
                                          Text(
                                            '86 mins left',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 84, 95),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),

/* ======================= DISPLAY NOTIFICATION PAGE =====================  */
          if (currentIndex == 1)
/* ======================= DISPLAY NOTIFICATION PAGE =====================  */
            Center(
              child: ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[200],
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 10,
                                color: Color.fromARGB(34, 0, 0, 0),
                              ),
                            ]),
                        height: statcardHeight,
                        width: MediaQuery.of(context).size.width * 0.76,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.group_add_outlined),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: statcardHeight * 0.2,
                                    ),
                                    Text(
                                      'John has requested to join your group Legends',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 128, 145),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: Text(
                                            'Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 0, 128, 145),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            'Decline',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 177, 49, 49),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[200],
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 10,
                                color: Color.fromARGB(34, 0, 0, 0),
                              ),
                            ]),
                        height: statcardHeight,
                        width: MediaQuery.of(context).size.width * 0.76,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.group_add_outlined),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: statcardHeight * 0.2,
                                    ),
                                    Text(
                                      'Aliko has requested to join your group Legends',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 128, 145),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: Text(
                                            'Confirm',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 0, 128, 145),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            'Decline',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 177, 49, 49),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[200],
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 10,
                                color: Color.fromARGB(34, 0, 0, 0),
                              ),
                            ]),
                        height: statcardHeight,
                        width: MediaQuery.of(context).size.width * 0.76,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.cancel_outlined,
                                color: Color.fromARGB(255, 205, 27, 15),
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: statcardHeight * 0.2,
                                    ),
                                    Text(
                                      'Grace rejected your request to join Koders',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 128, 145),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: Text(
                                            'Ok',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 0, 128, 145),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            'Message',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 177, 49, 49),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[200],
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 10,
                                color: Color.fromARGB(34, 0, 0, 0),
                              ),
                            ]),
                        height: statcardHeight,
                        width: MediaQuery.of(context).size.width * 0.76,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.group_add_outlined),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: statcardHeight * 0.2,
                                    ),
                                    Text(
                                      'John has requested to join your group Legends',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 128, 145),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: Text(
                                            'Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 0, 128, 145),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            'Decline',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 177, 49, 49),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[200],
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 10,
                                color: Color.fromARGB(34, 0, 0, 0),
                              ),
                            ]),
                        height: statcardHeight,
                        width: MediaQuery.of(context).size.width * 0.76,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.group_add_outlined),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: statcardHeight * 0.2,
                                    ),
                                    Text(
                                      'Aliko has requested to join your group Legends',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 128, 145),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: Text(
                                            'Confirm',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 0, 128, 145),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            'Decline',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 177, 49, 49),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[200],
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 10,
                                color: Color.fromARGB(34, 0, 0, 0),
                              ),
                            ]),
                        height: statcardHeight,
                        width: MediaQuery.of(context).size.width * 0.76,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.cancel_outlined,
                                color: Color.fromARGB(255, 205, 27, 15),
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: statcardHeight * 0.2,
                                    ),
                                    Text(
                                      'Grace rejected your request to join Koders',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 128, 145),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: Text(
                                            'Ok',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 0, 128, 145),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            'Message',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 177, 49, 49),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[200],
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 10,
                                color: Color.fromARGB(34, 0, 0, 0),
                              ),
                            ]),
                        height: statcardHeight,
                        width: MediaQuery.of(context).size.width * 0.76,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.downloading_outlined,
                                color: Colors.green,
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: statcardHeight * 0.2,
                                    ),
                                    Text(
                                      'Incoming group invite from Smiley',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 128, 145),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: Text(
                                            'Confirm',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 0, 128, 145),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            'Decline',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 177, 49, 49),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),

          /* ======================= DISPLAY PROFILE PAGE =====================  */
          if (currentIndex == 2)
/* ======================= DISPLAY PROGILE  PAGE =====================  */

            Container(
              padding: EdgeInsets.only(left: 16, top: 25, right: 16),
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: ListView(
                  children: [
                    Text(
                      "Edit Profile",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      color: Colors.black.withOpacity(0.1),
                                      offset: Offset(0, 10))
                                ],
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"))),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 4,
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor),
                                    color: Colors.green),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    buildTextField("Full Name", "Vigilant Kwao"),
                    buildTextField("E-mail", "vigilantkwao@gmail.com"),
                    buildTextField("Location", "Takoradi,Ghana"),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "CANCEL",
                              style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: 2.2,
                                  color: Colors.black),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),

/* ======================= DISPLAY SETTINGS PAGE =====================  */
          if (currentIndex == 3)
/* ======================= DISPLAY SETTINGS PAGE =====================  */

            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Center(
                          child: Stack(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 4,
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          blurRadius: 10,
                                          color: Colors.black.withOpacity(0.1),
                                          offset: Offset(0, 10))
                                    ],
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"))),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      SettingsTitle(
                        color: Colors.blue,
                        icon: Icons.password_outlined,
                        title: "Change Password",
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SettingsTitle(
                        color: Colors.black,
                        icon: Icons.dark_mode,
                        title: "Change Theme",
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SettingsTitle(
                        color: Colors.yellow,
                        icon: Icons.notification_add_outlined,
                        title: "Notifications",
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SettingsTitle(
                        color: Colors.green,
                        icon: Icons.question_answer_outlined,
                        title: "About",
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SettingsTitle(
                        color: Colors.red,
                        icon: Icons.delete_forever_outlined,
                        title: "Delete Account",
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),

/* ======================= DISPLAY CREATE GROUP PAGE =====================  */
          if (currentIndex == 6)
/* ======================= DISPLAY CREATE GROUP PAGE =====================  */
            Container(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Form(
                child: ListView(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = 0;
                            });
                          },
                          child: Container(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Color.fromARGB(255, 51, 129, 182),
                            ),
                          ),
                        ),
//Page Title
                        Text(
                          '',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 51, 129, 182),
                          ),
                        ),
                        Container(),
                      ],
                    ),
                    SizedBox(height: height * 0.04),
                    Text(
                      "Create Your Study ",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 51, 129, 182)),
                    ),
                    Text(
                      "Group !",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 51, 129, 182)),
                    ),
                    SizedBox(height: height * 0.5),
//form input field

                    TextFormField(
                      controller: grp_name_Ctl,
                      onChanged: (value) {
                         group_name_store = value;
                      },
                      decoration: InputDecoration(labelText: "Group Name"),
                      // validator: (value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                      //     return "Enter correct name";
                      //   } else {
                      //     return null;
                      //   }
                      // }
                    ),
                    SizedBox(height: height * 0.5),

                    //for text only validation
                    TextFormField(
                      controller: grp_loc_Ctl,
                      onChanged: (value) {
                         group_location_store = value;
                      },
                      decoration: InputDecoration(labelText: "Location"),
                      // validator: (value) {
                      //   if (value!.isEmpty ||!RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                      //     return "Enter correct name";
                      //   } else {
                      //     return null;
                      //   }
                      //  }
                    ),
                    SizedBox(height: height * 0.5),
                    TextFormField(
                       onChanged: (value) {
                       },
                      decoration: InputDecoration(labelText: "Meeting Mode"),
                      // validator: (value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[0-9]+$').hasMatch(value!)) {
                      //     return "Enter correct Phone Number";
                      //   } else {
                      //     return null;
                      //   }
                      // }
                    ),

                    SizedBox(height: height * 0.5),
                    TextFormField(
                       onChanged: (value) {
                       },
                      decoration: InputDecoration(
                          labelText: "Major Topic Under Discussion"),
                      // validator: (value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[0-9]+$').hasMatch(value!)) {
                      //     return "Enter correct Phone Number";
                      //   } else {
                      //     return null;
                      //   }
                      // }
                    ),

                    SizedBox(height: height * 0.5),
                    TextFormField(
                       onChanged: (value) {
                       },
                      decoration: InputDecoration(labelText: "Time"),
                      // validator: (value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[0-9]+$').hasMatch(value!)) {
                      //     return "Enter correct Phone Number";
                      //   } else {
                      //     return null;
                      //   }
                      // }
                    ),

                    SizedBox(height: height * 0.5),
                    TextFormField(
                       onChanged: (value) {
                       },
                      decoration: InputDecoration(labelText: "Duration"),
                      // validator: (value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[0-9]+$').hasMatch(value!)) {
                      //     return "Enter correct Phone Number";
                      //   } else {
                      //     return null;
                      //   }
                      // }
                    ),

                    SizedBox(height: height * 0.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Create Your Study\nGroup ",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 51, 129, 182),
                          ),
                        ),
                        GestureDetector(
                          // onTap: () async {
                          //   // login(
                          //   //   group_name,
                          //   //   group_location,
                          //   //   group_mode,
                          //   //   group_topic,
                          //   //   group_time,
                          //   //   group_duration,

                          //   // );
                          // },

                          onTap: () {
                            _register();
                            dostuff('hello world', 'hello mom');
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 22, 78, 161),
                            ),
                            child:
                                Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
        ],
      ),

      //Bottom Navigation

      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.grey,
            tabBackgroundColor: Color.fromARGB(255, 88, 97, 99),
            gap: 8,
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
                print(index);
              });
            },
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.notifications,
                text: 'Notifications',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
              GButton(icon: Icons.settings, text: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const NetworkImage(
          'https://www.dreamstime.com/abstract-fluid-art-background-light-blue-cyan-colors-liquid-marble-acrylic-painting-canvas-turquoise-gradient-image213047647',
        ),
      );
}

Widget buildCoverImage(height) {
  return Container(
      color: Colors.grey,
      child: Image.asset(
        'assets/images/over.jpg',
        width: double.infinity,
        height: height * 0.6,
        fit: BoxFit.cover,
      ));
}

Widget buildTextField(String labelText, String placeholder) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 35),
    child: TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 3),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
    ),
  );
}
