import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Column(
          children: [
            Text('랭킹 1위', style: TextStyle(fontSize: 12)),
            Text('베스트 리뷰어', style: TextStyle(fontSize: 16)),
          ],
        ),
        centerTitle: true,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/cat2.jpeg'),
            ),
            const SizedBox(height: 10),
            const Text('Name01',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Text('골드', style: TextStyle(color: Colors.yellow)),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text('조립컴 연체를 운영하며 리뷰를 작성합니다.'),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('작성한 리뷰 총 35개',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('최신순 ▼',
                          style: TextStyle(color: Colors.grey))),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(thickness: 0.5),
            ),
            const ReviewCard(),
            // Add more ReviewCards as needed
          ],
        ),
      ),
    );
  }
}

class ReviewCard extends StatefulWidget {
  const ReviewCard({super.key});

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  // Get today's date
  DateTime now = DateTime.now();

// Helper function to ensure two digits
  String _twoDigits(int n) {
    return n.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Product Image
              Container(
                width: 95,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: SizedBox(
                  width: 65,
                  height: 70,
                  child: Image.asset(
                    "assets/item4.png",
                    fit: BoxFit.cover,
                  ),
                )),
              ),
              const SizedBox(width: 16),
              // Product Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'AMD 라이젠 5 5600X 버미어',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Text("정품 멀티팩",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        )),
                    // const SizedBox(height: 8),
                    Row(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: index < 4 ? Colors.yellow : Colors.grey,
                              size: 24,
                            );
                          }),
                        ),
                        const Text('4.07',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(thickness: 0.5),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/cat2.jpeg'),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Name 01',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  Row(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: index < 4 ? Colors.yellow : Colors.grey,
                            size: 18,
                          );
                        }),
                      ),
                      Text(
                          '${now.year}.${_twoDigits(now.month)}.${_twoDigits(now.day)}',
                          style: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w300))
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.bookmark_outline_rounded, color: Colors.grey),
            ],
          ),
          const SizedBox(height: 10),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text(
                  '"가격저렴해요"',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 12),
                Text('"CPU온도 고오"',
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.w700)),
                SizedBox(width: 12),
                Text('"사용쉽겠어요"',
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.w700)),
                SizedBox(width: 12),
                Text('"패킹 잘돼아가요"',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700))
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              //bolt icon
              Icon(Icons.bolt, color: Colors.black87),
              Expanded(
                child: Text(
                  '멀티 작업도 잘 되고 팬 관찰습니다. 저희 화사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              //bolt icon
              Icon(Icons.bolt, color: Colors.grey),
              Expanded(
                child: Text(
                  '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/item5.png',
                width: 90,
                height: 90,
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 10),
              Image.asset('assets/item6.png',
                  width: 90, height: 90, fit: BoxFit.fill),
              const SizedBox(width: 10),
              Image.asset('assets/item7.png',
                  width: 90, height: 90, fit: BoxFit.fill),
            ],
          ),
        ],
      ),
    );
  }
}
