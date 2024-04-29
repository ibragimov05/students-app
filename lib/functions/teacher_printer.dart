import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// class to display all instructors' name and photo
class Teachers extends StatelessWidget {
  final String teacherImage;
  final String teacherName;
  final Color color;

  const Teachers({
    Key? key,
    required this.teacherImage,
    required this.teacherName,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(20)),
            child: Image.asset(teacherImage),
          ),
          Text(
            teacherName,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
