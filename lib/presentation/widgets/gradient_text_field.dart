import 'package:flutter/material.dart';

class GradientTextField extends StatelessWidget {
  const GradientTextField({super.key});
  final gradient = const LinearGradient(
    colors: [Colors.blue, Colors.purple],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const TextField(
          style: TextStyle(textBaseline: TextBaseline.alphabetic),
          decoration: InputDecoration(
            hintText: "검색어를 입력하세요",
            hintStyle: TextStyle(height: 1.0),
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
            suffixIcon: Icon(
              Icons.search,
              size: 24.0,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
