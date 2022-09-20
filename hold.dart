// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:StudierStudyApplication/utilities/group_card.dart';

//  class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   final List groupsForYou = [
//     // groupname 
//     ['Koders', 'Online', 'lib/icons/list.png', 'ff17'],
//     ['Koders', 'Online', 'lib/icons/list.png', 'ff17'],
//     ['Koders', 'Online', 'lib/icons/list.png', 'ff17'], 
     

//   ];
  
 
  



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: GNav(
//         tabs: const [
//           GButton(icon: Icons.home),
//           GButton(icon: Icons.home),



//         ],
//         ),


//       backgroundColor: Colors.grey[300],
//        body: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: 25),
//           Padding(
//             padding: const EdgeInsets.only(left: 25.0),
//             child: Container(
//               height: 50,
//               padding: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.white),
//                 borderRadius: BorderRadius.circular(12),
//                 color: Colors.grey[200],
//               ),
//               child: Image.asset(
//                 'lib/icons/list.png',
//                 color: Colors.grey[800],

//                 ),
              
//             ),
//           ),

//           const SizedBox(height: 50),

//           const Padding(
//             padding: EdgeInsets.only(left: 25.0),
//             child: const Text(
//               'Hi Divine',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 26.0,
//               ),
//               ),
            
//           ),
//           const Padding(
//             padding: EdgeInsets.only(left: 25.0),
//             child: const Text(
//               'Ready to learn?',
//               style: TextStyle(
//                  fontSize: 16.0,
//               ),
//               ),
            
//           ), 
//           SizedBox(height: 25,),
          
//           Container(
//             height: 160,
//             child: ListView.builder(
//               itemCount: groupsForYou.length,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index){
//               return group_card(
//                 group_name: groupsForYou[index][0],
//                 group_state: groupsForYou[index][1],
//                 group_image: groupsForYou[index][2],
//                 group_location: groupsForYou[index][3],

//               );

//             }),
//           ),

//           SizedBox(height: 45,),

//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,

//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                 border: Border.all(color: Colors.white),
//                 borderRadius: BorderRadius.circular(30),
//                 color: Colors.grey[200],
//               ),
                
//                 width: 150,
//                 height: 170,
                
//                 child: Column(children: [
//                    Container(
//                     height: 85,
//                     child: Icon(Icons.people_outline_rounded,
//                         size: 50, 
//                         color: Colors.black
//                     ),
                                      
                    
//                    ),
//                    Column(
//                     children: [
//                       Container(
                        
                        
//                         child: Text('Create Group',
//                          style: TextStyle(
//                              fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
 

                        
                        
                        
//                       ),
//                       SizedBox(height: 15,),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           child: Text(
//                             'create a new study group',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 12,
                              
//                              ),
//                           ),
//                         ),
//                       )

//                     ],

//                    ),
                      

                    

 
//                 ]),
   
//               ),
//                Container(
//                 width: 120,
//                 height: 150,
//                 color: Colors.red,
  
//               )


//             ],
//           ),
 

         
          

 
//         ],
//       ),
        
//     );
    
//   }
// }