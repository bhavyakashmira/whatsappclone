import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);
 @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
                leading: CircleAvatar(
                  child: SvgPicture.asset('person_black_36dp.svg',
                  color:Colors.white,
                  height: 38,
                  width: 38,),
                  backgroundColor: Colors.blueGrey,
                  radius: 30,
                  ),
                title: Text(
                  "Ayush Sharma",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.done_all),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Hi wassup?",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                trailing: Text("18:04"),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20,left: 80),
          child: Divider(thickness: 1,),
        ),
        ListTile(
                leading: CircleAvatar(
                  child: SvgPicture.asset('groups_black_36dp.svg',
                  color:Colors.white,
                  height: 38,
                  width: 38,),
                  backgroundColor: Colors.blueGrey,
                  radius: 30,
                  ),
                title: Text(
                  "group",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.done_all),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Hi wassup?",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                trailing: Text("18:04"),
        ),

      ],
    );

  }
}