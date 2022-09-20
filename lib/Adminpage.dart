import 'package:flutter/material.dart';
 
class Adminpage extends StatefulWidget {
  const Adminpage({Key? key}) : super(key: key);

  @override
  State<Adminpage> createState() => _AdminpageState();
}

class _AdminpageState extends State<Adminpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:
      Container(
        child: SafeArea(
          child: SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [



                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        // onTap: (){
                        //   Navigator.of(context).push(MaterialPageRoute(builder:
                        //       (context)=>Mainpage(),));
                        // },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                          child: Container(

                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1.0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                              child: Text('BACK',
                                style: TextStyle(
                                    color: Colors.cyan[800],
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                ),),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/project3.png'),
                          radius: 20,
                        ),
                      ),


                      Column(
                        //
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [


                          Text('UserName',
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),

                          Text('Admin',
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),


                        ],
                      ),


                    ],

                  ),








                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [


                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                          decoration: BoxDecoration(color: Colors.cyan[800],
                              borderRadius: BorderRadius.circular(42)),


                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text('GroupName',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('GroupNaasdfghjgrwgjrhjdsffdgfhhjfdgfhjkdfghjkfghbjcgvhbjncvbhncvbnvbniwrasFEDGFHHHFHDHFHHFHFHASKWFHIEYEFHGHEGHEHejirwjwi<jirjhi',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),),
                                ],
                              ),
                            ),
                          ),

                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                          decoration: BoxDecoration(color: Colors.cyan[800],
                              borderRadius: BorderRadius.circular(42)),


                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  child: Text('Joan has requested to join your group',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),),
                                ),

                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // RaisedButton.icon(onPressed: (){},
                                    //   icon: Icon(Icons.add),
                                    //   label: Text('Accept',style: TextStyle(
                                    //     color: Colors.cyan[800],
                                    //     fontWeight: FontWeight.bold,
                                    //   ),),
                                    //   color: Colors.white,


                                    // ),


                                    // RaisedButton.icon(onPressed: (){},
                                    //   icon: Icon(Icons.delete),
                                    //   label: Text('Delete',style: TextStyle(
                                    //     color: Colors.cyan[800],
                                    //     fontWeight: FontWeight.bold,
                                    //   ),),
                                    //   color: Colors.white,


                                    // ),



                                  ],
                                ),



                              ],
                            ),
                          ),

                        ),
                      ),





                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                          decoration: BoxDecoration(color: Colors.cyan[800],
                              borderRadius: BorderRadius.circular(42)),


                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  child: Text('Joan has requested to join your group',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),),
                                ),


                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // RaisedButton.icon(onPressed: (){},
                                    //   icon: Icon(Icons.add),
                                    //   label: Text('Accept',style: TextStyle(
                                    //     color: Colors.cyan[800],
                                    //     fontWeight: FontWeight.bold,
                                    //   ),),
                                    //   color: Colors.white,


                                    // ),


                                    // RaisedButton.icon(onPressed: (){},
                                    //   icon: Icon(Icons.delete),
                                    //   label: Text('Delete',style: TextStyle(
                                    //     color: Colors.cyan[800],
                                    //     fontWeight: FontWeight.bold,
                                    //   ),),
                                    //   color: Colors.white,


                                    // ),



                                  ],
                                ),








                              ],
                            ),
                          ),

                        ),
                      ),



                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                          decoration: BoxDecoration(color: Colors.cyan[800],
                              borderRadius: BorderRadius.circular(42)),


                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  child: Text('Joan has requested to join your group',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),),


                                ),

                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // RaisedButton.icon(onPressed: (){},
                                    //   icon: Icon(Icons.add),
                                    //   label: Text('Accept',style: TextStyle(
                                    //     color: Colors.cyan[800],
                                    //     fontWeight: FontWeight.bold,
                                    //   ),),
                                    //   color: Colors.white,


                                    // ),


                                    // RaisedButton.icon(onPressed: (){},
                                    //   icon: Icon(Icons.delete),
                                    //   label: Text('Delete',style: TextStyle(
                                    //     color: Colors.cyan[800],
                                    //     fontWeight: FontWeight.bold,
                                    //   ),),
                                    //   color: Colors.white,


                                    // ),



                                  ],
                                ),



                              ],
                            ),
                          ),

                        ),
                      ),



                    ],
                  ),


                  //signin with google or facebk
                  SizedBox(height: 30),



                ],),
            ),
          ),          ),
      ),


    );
  }
}




