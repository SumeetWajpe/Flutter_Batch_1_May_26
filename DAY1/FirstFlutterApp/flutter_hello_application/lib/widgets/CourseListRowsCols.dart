import 'package:flutter/material.dart';

class CourseListRowsCols extends StatelessWidget {
  const CourseListRowsCols({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/React-icon.png"),
              width: 100,
            ),
            Column(
              children: <Widget>[
                Text(
                  "React",
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
                Text("A JS Library"),
              ],
            ),
            Text("Delete", style: TextStyle(color: Colors.red)),
          ],
        ),
      ],
    );
  }
}



// return Row(
//       children: <Widget>[
//         Container(
//           color: Colors.amber,
//           height: 100,
//           width: 100,
//           // width: double.infinity,
//           padding: EdgeInsets.all(10),
//           child: const Text("Hello"),
//         ),
//         Container(
//           color: const Color.fromARGB(255, 66, 184, 72),
//           height: 100,
//           width: 100,
//           padding: EdgeInsets.all(10),
//           child: const Text("Hola"),
//         ),
//         Container(
//           color: const Color.fromARGB(255, 204, 96, 81),
//           height: 100,
//           width: 100,
//           padding: EdgeInsets.all(10),
//           child: const Text("Bye"),
//         ),
//       ],
//     );
 