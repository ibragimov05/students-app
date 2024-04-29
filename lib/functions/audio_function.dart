import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioContainer extends StatelessWidget {
  String theme;
  String duration;
  bool isSelected;

  AudioContainer({
    super.key,
    required this.theme,
    required this.duration,
    required this.isSelected,
  });

  /// method to displaying all audios
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: isSelected == true
                    ? const Color(0xFFed552b)
                    : Colors.orange.withOpacity(0.3),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                Icons.play_arrow_rounded,
                size: 35,
                color:
                    isSelected == true ? Colors.white : const Color(0xFFed552b),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(3),
              height: 60,
              width: 240,
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    theme,
                    style: const TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  Text(duration),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: isSelected == true
                      ? const Color(0xFF6759d4)
                      : const Color(0xFF6759d4).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20)),
              child: isSelected == true
                  ? const Icon(
                      CupertinoIcons.lock_open_fill,
                      size: 20,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.lock,
                      size: 20,
                      color: Color(0xFF6759d4),
                    ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
          child: Divider(
            color: Colors.grey.withOpacity(0.3),
          ),
        ),
      ],
    );
  }
}
