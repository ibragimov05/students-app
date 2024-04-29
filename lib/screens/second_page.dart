import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_app/buttons/main_button.dart';
import 'package:student_app/functions/audio_function.dart';

class SecondPage extends StatelessWidget {
  /// audio-list theme and duration
  List<Map<String, dynamic>> audioList_info = [
    {
      'theme': 'Introduction',
      'duration': '2 Min 43 Sec',
      'isSelected': true,
    },
    {
      'theme': 'How To Start Design?',
      'duration': '2 Min 43 Sec',
      'isSelected': false,
    },
    {
      'theme': 'What Is UI/UX Design?',
      'duration': '2 Min 43 Sec',
      'isSelected': false,
    },
    {
      'theme': 'User Experience Design',
      'duration': '2 Min 43 Sec',
      'isSelected': false,
    },
    {
      'theme': 'User Interface Design',
      'duration': '2 Min 43 Sec',
      'isSelected': false,
    },
    {
      'theme': 'Prototyping',
      'duration': '2 Min 43 Sec',
      'isSelected': false,
    },
  ];

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Scaffold(
        floatingActionButton: const MainButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Course Details',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          ),
          centerTitle: true,
          actions: [
            Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
              ),
              child: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),

              /// image of player in start
              Container(
                height: 244,
                width: 349,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/second_page_photo.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)),

                /// playlist and description containers
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                          color: const Color(0xFF6759d4),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          'Playlist (27)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 17),
                      child: Text(
                        'Descriptions',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              /// calling method for displaying all audios
              for (var each in audioList_info)
                AudioContainer(
                  theme: each['theme'],
                  duration: each['duration'],
                  isSelected: each['isSelected'],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
