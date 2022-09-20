// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:untitled1/Signinpage.dart';
// class CreateProfile extends StatefulWidget {

//   const CreateProfile({Key? key}) : super(key: key);

//   @override
//   State<CreateProfile> createState() => _CreateProfileState();
// }

// class _CreateProfileState extends State<CreateProfile> {
//   final _globalkey = GlobalKey<FormState>();
//   TextEditingController firstName = TextEditingController();
//   TextEditingController lastName = TextEditingController();
//   TextEditingController gender = TextEditingController();
//   TextEditingController institution = TextEditingController();
//   TextEditingController college = TextEditingController();
//   TextEditingController department = TextEditingController();
//   File? image;
//   Future pickImage(ImageSource source) async{
//     await ImagePicker().pickImage(source: source);
//     if (image == null) return;
//     final imageTemporary = File(image!.path);
//     setState(() {
//       this.image = imageTemporary;
//     });

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
//         child: Form(
//           key: _globalkey,
//           child: ListView(
//             padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
//             children: [
//               imageProfile(),
//               SizedBox(height: 20,),
//               Text("CREATE YOUR PROFILE",textAlign: TextAlign.center,style:
//                 TextStyle(color: Colors.cyan[800],
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold),),
//               SizedBox(height: 20,),
//               firstnametextField(),
//               SizedBox(height: 20,),
//               lastNametextField(),
//               SizedBox(height: 20,),
//               genderTextField(),
//               SizedBox(height: 20,),
//               institutiontextField(),
//               SizedBox(height: 20,),
//               collegetextField(),
//               SizedBox(height: 20,),
//               departmentTextField(),
//               SizedBox(height: 20,),

//           InkWell(
//             onTap: () {
//               if (_globalkey.currentState!.validate()) {
//                 print('Validate');

//                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignInpage(),));
//               }
//             },

//             child: Center(
//               child: Container(
//                 width: 150,
//                 height: 50,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(22),
//                     color: Colors.cyan[800]

//                 ),
//                 child: Center(
//                   child: Text('Submit', style:
//                   TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),),
//                 ),
//               ),
//             ),
//           ),

//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget imageProfile(){
//     return Center(
//       child: Stack(
//         children: [
//           CircleAvatar(
//             radius: 80,
//             backgroundImage: image !=null? Image.file(image!,
//             width: 130,
//               height: 130,
//               fit: BoxFit.cover,
//             ) as ImageProvider:AssetImage(
//                 '')
//           ),
//           Positioned(
//               bottom: 20.0,
//           right: 20.0,
//               child: InkWell(
//                 onTap: (){
//                  showModalBottomSheet(context: context,
//                      builder: ((builder)=> bottomsheet()),
//                  );
//                 },
//                 child: Icon(Icons.camera_alt,
//                 color: Colors.teal,
//                 size: 28,),
//               ),),
//         ],
//       ),
//     );
//   }


//   Widget bottomsheet(){
//     return  Container(
//       height: 100,
//         width: MediaQuery.of(context).size.width,
//       margin: EdgeInsets.symmetric(
//         horizontal: 20, vertical: 20,
//       ),
//       child: Column(
//         children: [
//           Text('Choose a profile Photo',style: TextStyle(
//             fontSize: 20,
//           ),),
//           SizedBox(height: 20,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FlatButton.icon(onPressed: (){
//                pickImage(ImageSource.camera);
//               },
//                   icon: Icon(Icons.camera),
//                   label: Text('Camera')),

//               FlatButton.icon(onPressed: (){
//                 pickImage(ImageSource.gallery);
//               },
//                   icon: Icon(Icons.image),
//                   label: Text('Gallery')),

//             ],
//           )
//         ],
//       ),
//     );
//   }




//   Widget firstnametextField(){
//     return TextFormField(
//       controller: firstName,
//         validator: (value)
//         {
//           if(value!.isEmpty)
//             return 'First Name can\'t be empty';
//           return null;
//         },
//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderSide: BorderSide(
//             color: Colors.teal,
//           )),
//         focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: Colors.cyan,
//               width: 2,
//             )),
//         prefixIcon: Icon(
//           Icons.person,
//           color: Colors.cyan[800],

//         ),
//         labelText: "First Name",
//         helperText: "First Name cant be empty",
//         hintText: "Adams",

//       )
//     );
//   }

//   Widget lastNametextField(){
//     return TextFormField(
//       controller: lastName,
//         validator: (value)
//         {
//           if(value!.isEmpty)
//             return 'Last Name can\'t be empty';
//           return null;
//         },
//         decoration: InputDecoration(
//           border: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.teal,
//               )),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.cyan,
//                 width: 2,
//               )),
//           prefixIcon: Icon(
//             Icons.person,
//             color: Colors.cyan[800],

//           ),
//           labelText: "Last Name",
//           helperText: "Last Name cant be empty",
//           hintText: "Osei",

//         )
//     );
//   }

//   Widget genderTextField(){

//     return TextFormField(
//       controller: gender,
//         validator: (value)
//         {
//           if(value!.isEmpty)
//             return 'Gender can\'t be empty';
//           return null;
//         },
//         decoration: InputDecoration(
//           border: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.teal,
//               )),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.cyan,
//                 width: 2,
//               )),
//           prefixIcon: Icon(
//             Icons.person,
//             color: Colors.cyan[800],

//           ),
//           labelText: "Gender",
//           helperText: "Gender cant be empty",
//           hintText: "Male",

//         )
//     );
//   }




//   Widget institutiontextField(){
//     return TextFormField(
//       controller: institution,
//         validator: (value)
//         {
//           if(value!.isEmpty)
//             return 'Institution can\'t be empty';
//           return null;
//         },
//         decoration: InputDecoration(
//           border: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.teal,
//               )),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.cyan,
//                 width: 2,
//               )),
//           prefixIcon: Icon(
//             Icons.house,
//             color: Colors.cyan[800],

//           ),
//           labelText: "Institution",
//           helperText: "Institution cant be empty",
//           hintText: "Knust",

//         )
//     );
//   }

//   Widget collegetextField(){
//     return TextFormField(
//       controller: college,
//         validator: (value)
//         {
//           if(value!.isEmpty)
//             return 'College can\'t be empty';
//           return null;
//         },
//         decoration: InputDecoration(
//           border: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.teal,
//               )),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.cyan,
//                 width: 2,
//               )),
//           prefixIcon: Icon(
//             Icons.house,
//             color: Colors.cyan[800],

//           ),
//           labelText: "College",
//           helperText: "College cant be empty",
//           hintText: "Cos",

//         )
//     );
//   }

//   Widget departmentTextField(){
//     return TextFormField(
//       controller: department,
//         validator: (value)
//         {
//           if(value!.isEmpty)
//             return 'Department can\'t be empty';
//           return null;
//         },
//         decoration: InputDecoration(
//           border: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.teal,
//               )),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.cyan,
//                 width: 2,
//               )),
//           prefixIcon: Icon(
//             Icons.house,
//             color: Colors.cyan[800],

//           ),
//           labelText: "Department",
//           helperText: "Department cant be empty",
//           hintText: "Computer science",

//         )
//     );
//   }



// }
