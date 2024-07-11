import 'package:flutter/material.dart';
import 'package:porductlist/presentation/screens/profile_screen.dart';

class HorizontalPeopleList extends StatelessWidget {
  const HorizontalPeopleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Text('골드 계급 사용자들이예요', style: TextStyle(fontSize: 12)),
        ),
        const ListTile(
          title: Text('베스트 리뷰어⭐Top10', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500)),
        ),
        SizedBox(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    const SizedBox(width: 15.0),
                    Column(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/profile.jpeg'),
                          radius: 40.0,
                        ),
                        const SizedBox(height: 8.0),
                        Text('Name$index'),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
