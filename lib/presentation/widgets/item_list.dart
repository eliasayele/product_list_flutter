import 'package:flutter/material.dart';
import 'package:porductlist/models/product.dart';
import 'package:porductlist/presentation/widgets/product_list.dart';

class ItemListView extends StatelessWidget {
  final List<Products> productList = [
    Products(
      name: "LG전자 스탠바이미 27ART10AKPL",
      description: [
        "화면을 이동할 수 있고 전원도 편리하다...",
        "스탠바이미는 사랑입니다!",
      ],
      image: "assets/item1.png",
      isPremium: true,
      price: "",
      salesRank: 1,
      rating: "4.89",
      reviewCount: "216",
      tags: ["LG전자", "편리성"],
    ),
    Products(
      name: "LG전자 올레드HD 75UP8300KNA",
      description: [
        "화면 잘 나오고... 리모컨 기능 좋습니다...",
        "넷플 아마존 등 버튼하나로 바로 접속 되...",
      ],
      image: "assets/item2.png",
      isPremium: false,
      salesRank: 2,
      price: "",
      rating: "4.36",
      reviewCount: "136",
      tags: ["LG전자", "고화질"],
    ),
    Products(
      name: "라익미 스마트 DS4001L NETRANGE",
      description: [
        "반응속도 및 화질이나 여러면에서도 부족...",
        "중소기업TV라익미 제품을 사용해보았...",
      ],
      salesRank: 3,
      image: "assets/item3.jpeg",
      isPremium: false,
      price: "",
      rating: "3.98",
      reviewCount: "98",
      tags: ["라익미", "가성비"],
    ),
  ];
  ItemListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Text("제일 핫한 리뷰를 만나보세요"),
        ),
        const ListTile(
          title: Text('리뷰 랭킹⭐top 3'),
          trailing: Icon(Icons.arrow_forward_ios_sharp),
        ),
        ProductListView(products: productList)
      ],
    );
  }
}