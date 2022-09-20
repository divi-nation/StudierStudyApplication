// import 'package:flutter/material.dart';
// import 'package:StudierStudyApplication/functions/login.dart';
// import 'package:StudierStudyApplication/ghost/homepage.dart';
// //import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// TextEditingController group_nameCtl = TextEditingController();
// dynamic group_name;

// TextEditingController group_locationCtl = TextEditingController();
// dynamic group_location;

// TextEditingController group_modeCtl = TextEditingController();
// dynamic group_mode;

// TextEditingController group_topicCtl = TextEditingController();
// dynamic group_topic;

// TextEditingController group_timeCtl = TextEditingController();
// dynamic group_time;

// TextEditingController group_durationCtl = TextEditingController();
// dynamic group_duration;

// class CreateGroup extends StatefulWidget {
//   const CreateGroup({super.key});
//   @override
//   // ignore: library_private_types_in_public_api
//   _CreateGroup createState() => _CreateGroup();
// }

// class _CreateGroup extends State<CreateGroup> {
//   final formKey = GlobalKey<FormState>(); //key for form
//   String name = "";
//   @override
//   Widget build(BuildContext context) {
//     final double height = MediaQuery.of(context).size.height;
//     final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//     return Scaffold(
//         key: _scaffoldKey,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         backgroundColor: Color(0xFFffffff),
//         body: Container(
//           padding: const EdgeInsets.only(left: 40, right: 40),
//           child: Form(
//             key: formKey, //key for form

//             child: ListView(
//               //crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const HomePage()));
//                       },
//                       child: Container(
//                         child: Icon(
//                           Icons.arrow_back_ios,
//                           color: Color.fromARGB(255, 51, 129, 182),
//                         ),
//                       ),
//                     ),
// //Page Title
//                     Text(
//                       '',
//                       style: TextStyle(
//                         fontSize: 25,
//                         color: Color.fromARGB(255, 51, 129, 182),
//                       ),
//                     ),
//                     Container(),
//                   ],
//                 ),
//                 SizedBox(height: height * 0.04),
//                 Text(
//                   "Create Your Study ",
//                   style: TextStyle(
//                       fontSize: 30, color: Color.fromARGB(255, 51, 129, 182)),
//                 ),
//                 Text(
//                   "Group !",
//                   style: TextStyle(
//                       fontSize: 30, color: Color.fromARGB(255, 51, 129, 182)),
//                 ),
//                 SizedBox(height: height * 0.05),

// //form input field

//                 TextFormField(
//                   controller: group_nameCtl,
//                   onChanged: (value) {
//                     group_name = value;
//                   },
//                   decoration: InputDecoration(labelText: "Group Name"),
//                   // validator: (value) {
//                   //   if (value!.isEmpty ||
//                   //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
//                   //     return "Enter correct name";
//                   //   } else {
//                   //     return null;
//                   //   }
//                   // }
//                 ),
//                 SizedBox(height: height * 0.05),

//                 //for text only validation
//                 TextFormField(
//                   controller: group_locationCtl,
//                   onChanged: (value) {
//                     group_location = value;
//                   },
//                   decoration: InputDecoration(labelText: "Location"),
//                   // validator: (value) {
//                   //   if (value!.isEmpty ||!RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
//                   //     return "Enter correct name";
//                   //   } else {
//                   //     return null;
//                   //   }
//                   //  }
//                 ),
//                 SizedBox(height: height * 0.05),

//                 TextFormField(
//                   controller: group_modeCtl,
//                   onChanged: (value) {
//                     group_mode = value;
//                   },
//                   decoration: InputDecoration(labelText: "Meeting Mode"),
//                   // validator: (value) {
//                   //   if (value!.isEmpty ||
//                   //       !RegExp(r'^[0-9]+$').hasMatch(value!)) {
//                   //     return "Enter correct Phone Number";
//                   //   } else {
//                   //     return null;
//                   //   }
//                   // }
//                 ),

//                 SizedBox(height: height * 0.05),

//                 TextFormField(
//                   controller: group_topicCtl,
//                   onChanged: (value) {
//                     group_topic = value;
//                   },
//                   decoration: InputDecoration(
//                       labelText: "Major Topic Under Discussion"),
//                   // validator: (value) {
//                   //   if (value!.isEmpty ||
//                   //       !RegExp(r'^[0-9]+$').hasMatch(value!)) {
//                   //     return "Enter correct Phone Number";
//                   //   } else {
//                   //     return null;
//                   //   }
//                   // }
//                 ),

//                 SizedBox(height: height * 0.05),
//                 TextFormField(
//                   controller: group_timeCtl,
//                   onChanged: (value) {
//                     group_time = value;
//                   },
//                   decoration: InputDecoration(labelText: "Time"),
//                   // validator: (value) {
//                   //   if (value!.isEmpty ||
//                   //       !RegExp(r'^[0-9]+$').hasMatch(value!)) {
//                   //     return "Enter correct Phone Number";
//                   //   } else {
//                   //     return null;
//                   //   }
//                   // }
//                 ),

//                 SizedBox(height: height * 0.05),
//                 TextFormField(
//                   controller: group_durationCtl,
//                   onChanged: (value) {
//                     group_duration = value;
//                   },
//                   decoration: InputDecoration(labelText: "Duration"),
//                   // validator: (value) {
//                   //   if (value!.isEmpty ||
//                   //       !RegExp(r'^[0-9]+$').hasMatch(value!)) {
//                   //     return "Enter correct Phone Number";
//                   //   } else {
//                   //     return null;
//                   //   }
//                   // }
//                 ),

//                 SizedBox(height: height * 0.05),

//                 SizedBox(height: height * 0.05),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   // ignore: prefer_const_literals_to_create_immutables
//                   children: [
//                     Text(
//                       "Create Your Study\nGroup ",
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Color.fromARGB(255, 51, 129, 182),
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () async {
//                         login(
//                           group_name,
//                           group_location,
//                           group_mode,
//                           group_topic,
//                           group_time,
//                           group_duration,
//                         );
//                       },
//                       child: Container(
//                         height: 70,
//                         width: 70,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Color.fromARGB(255, 22, 78, 161),
//                         ),
//                         child: Icon(Icons.arrow_forward, color: Colors.white),
//                       ),
//                     )
//                   ],
//                 ),

//                 SizedBox(
//                   height: 20,
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }
