import 'package:flutter/material.dart';

class group_card extends StatelessWidget {
  final String group_name;
  final String group_location;
  final String group_state;
  final String group_image;

  group_card({
    required this.group_name,
    required this.group_location,
    required this.group_state,
    required this.group_image,

  });

 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.87,
          padding: EdgeInsets.all(12),
          color: Color.fromARGB(255, 17, 17, 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
              Container(height: 60,
              child: Image.asset(group_image),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Active',
                    style: TextStyle(color: Colors.white),
                    ),
                  color: Colors.cyan,
                  ),
              ),
            ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                group_name,
                
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                ),
            ),
            Text(group_state.toString(),
                style: TextStyle(
                  color: Colors.white,
                  ),
            
            ),
               
       
          ],),
        ),
      ),
    );
    
  }
}