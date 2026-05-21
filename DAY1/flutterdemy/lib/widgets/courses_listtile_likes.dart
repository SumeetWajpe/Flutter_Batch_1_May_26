import 'package:flutter/material.dart';
import 'package:flutterdemy/models/course_model.dart';

class CoursesWithListTileIncrementLikes extends StatefulWidget {
  const CoursesWithListTileIncrementLikes({super.key});

  @override
  State<CoursesWithListTileIncrementLikes> createState() =>
      _CoursesWithListTileIncrementLikesState();
}

class _CoursesWithListTileIncrementLikesState
    extends State<CoursesWithListTileIncrementLikes> {
  final List<CourseModel> listofcourses = [
    CourseModel(
      1,
      "React",
      "A JS library",
      100,
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/3840px-React-icon.svg.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail",
    ),
    CourseModel(
      2,
      "Node",
      "A Server FX",
      200,
      "https://miro.medium.com/v2/resize:fit:800/1*bc9pmTiyKR0WNPka2w3e0Q.png",
    ),
    CourseModel(
      3,
      "Angular",
      "A JS FX",
      500,
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Angular_gradient_logo.png/960px-Angular_gradient_logo.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail",
    ),
    CourseModel(
      4,
      "Flutter",
      "A Cross Platform solution",
      200,
      "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
    ),
  ];
  void deleteACourse(theIndex) {
    // set the state
    setState(() {
      listofcourses.removeAt(theIndex);
    });
  }

  // void deleteACourse(CourseModel course) {
  //   // set the state
  //   setState(() {
  //     // listofcourses.removeWhere((theCourse) => theCourse.id == course.id);
  //     int index = listofcourses.indexOf(course);
  //     listofcourses.removeAt(index);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: listofcourses.length,
      itemBuilder: (context, index) {
        final course = listofcourses[index];

        return GestureDetector(
          onHorizontalDragEnd: (_) {
            deleteACourse(index);
          },
          child: Card(
            elevation: 15,
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: Image.network(course.imageUrl),
              title: Text(course.title, style: const TextStyle(fontSize: 25)),
              subtitle: Text(
                course.subtitle,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 81, 80, 80),
                ),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: const Icon(
                      Icons.delete,
                      color: Color.fromARGB(255, 223, 93, 84),
                    ),
                    onTap: () {
                      // change the state
                      deleteACourse(index);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

//  InkWell(
//                   child: const Icon(
//                     Icons.thumb_up_sharp,
//                     color: Color.fromARGB(255, 74, 173, 231),
//                   ),
//                   onTap: () {
//                     setState(() {
//                       course.likes += 1;
//                     });
//                   },
//                 ),
//                 Text(
//                   course.likes.toString(),
//                   style: const TextStyle(fontSize: 15),
//                 ),

// import 'package:flutter/material.dart';
// import 'package:flutterdemy/models/course_model.dart';

// class CoursesWithListTileIncrementLikes extends StatefulWidget {
//   const CoursesWithListTileIncrementLikes({super.key});

//   @override
//   State<CoursesWithListTileIncrementLikes> createState() =>
//       _CoursesWithListTileIncrementLikesState();
// }

// class _CoursesWithListTileIncrementLikesState
//     extends State<CoursesWithListTileIncrementLikes> {
//   final List<CourseModel> listofcourses = [
//     CourseModel(
//       1,
//       "React",
//       "A JS library",
//       100,
//       "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/3840px-React-icon.svg.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail",
//     ),
//     CourseModel(
//       2,
//       "Node",
//       "A Server FX",
//       200,
//       "https://miro.medium.com/v2/resize:fit:800/1*bc9pmTiyKR0WNPka2w3e0Q.png",
//     ),
//     CourseModel(
//       3,
//       "Angular",
//       "A JS FX",
//       500,
//       "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Angular_gradient_logo.png/960px-Angular_gradient_logo.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail",
//     ),
//     CourseModel(
//       4,
//       "Flutter",
//       "A Cross Platform solution",
//       200,
//       "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: const EdgeInsets.all(10),
//       children: <Widget>[
//         ...listofcourses.map(
//           (course) => Card(
//             elevation: 15,
//             child: ListTile(
//               leading: Image(image: NetworkImage(course.imageUrl), width: 100),
//               title: Text(course.title, style: const TextStyle(fontSize: 25)),
//               subtitle: Text(
//                 course.subtitle,
//                 style: const TextStyle(
//                   fontSize: 15,
//                   color: Color.fromARGB(255, 81, 80, 80),
//                 ),
//               ),
//               trailing: Column(
//                 children: [
//                   InkWell(
//                     child: const Icon(
//                       Icons.thumb_up_sharp,
//                       color: Color.fromARGB(255, 74, 173, 231),
//                     ),
//                     onTap: () {
//                       // change the state
//                       setState(() {
//                         course.likes += 1;
//                       });
//                     },
//                   ),
//                   Text(course.likes.toString(), style: TextStyle(fontSize: 15)),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
