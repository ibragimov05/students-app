import 'package:flutter/material.dart';

/// main button in second page
class MainButton extends StatelessWidget {
  const MainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
            color: const Color(0xFFed552b),
            borderRadius: BorderRadius.circular(20)),
        child: const Center(
          child: Text(
            'Purchase only - \$28',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
