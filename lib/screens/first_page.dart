import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:student_app/functions/teacher_printer.dart';

class FirstPage extends StatelessWidget {
  /// names of teacher and pictures
  List<Map<String, dynamic>> teacherInfo = [
    {
      'teacherName': 'Michale',
      'teacherPhoto': 'assets/images/profile_photo.png',
      'color': const Color(0xFFedffc4),
    },
    {
      'teacherName': 'Rock',
      'teacherPhoto': 'assets/images/profile_photo.png',
      'color': const Color(0xFF8ee4f5),
    },
    {
      'teacherName': 'Daniel',
      'teacherPhoto': 'assets/images/profile_photo.png',
      'color': const Color(0xFFf0d59c),
    },
    {
      'teacherName': 'Steven',
      'teacherPhoto': 'assets/images/profile_photo.png',
      'color': const Color(0xFFe3a1c2),
    },
    {
      'teacherName': 'Jack',
      'teacherPhoto': 'assets/images/profile_photo.png',
      'color': const Color(0xFFb6e6aa),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Hi, John Smith 👋',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: Container(
            padding: const EdgeInsets.all(8),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xFFf5d1a6),
            ),
            child: Image.asset('assets/images/profile_photo.png'),
          ),
          /// notification icon
          actions: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: const Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Discover How\nTo Be Creative',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.orange.shade800,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 75,
                        width: 75,
                        child: Image.asset('assets/images/rocket.png'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                /// instructors
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Instructor',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.orange.shade800,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                /// displaying teachers' names and photos
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      for (var each in teacherInfo)
                        Teachers(
                          teacherImage: each['teacherPhoto'],
                          teacherName: each['teacherName'],
                          color: each['color'],
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  children: [
                    Text(
                      'Courses',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'All',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    Text(
                      'Design',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 17),
                    ),
                    Text(
                      'Programming',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 17),
                    ),
                    Text(
                      'Gaming',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                /// title of courses and its photo
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow,
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/programming_photo.jpg',
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 70,
                      width: 270,
                      // decoration: BoxDecoration(color: Colors.redAccent, ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '📄 24 Lessons',
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                ),
                              ),
                              Text(
                                '▶️ 2Hr 30Min',
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text(
                            'Learn Web Development',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/ui-ux-design.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/secondpage');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        height: 70,
                        width: 270,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '📄 24 Lessons',
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  '▶️ 2Hr 30Min',
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                            const Text(
                              'Learn Pro UI/UX Design',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                  child: Divider(
                    thickness: 1,
                    // backgroundColor: Colors.redAccent,
                  ),
                )
              ],
            ),
          ),
        ),
        /// bottom navigation bar which consists of fout icon buttons
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          // Add this line to remove the borders
          fixedColor: const Color(0xFF7888de),
          unselectedItemColor: Colors.grey,
          backgroundColor: const Color(0x00ffffff),
          showUnselectedLabels: true,

          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.home_filled),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bookmark_solid),
                backgroundColor: Colors.purple,
                label: 'Favourites'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
