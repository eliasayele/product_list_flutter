import 'package:flutter/material.dart';
import 'package:porductlist/main.dart';
import 'package:porductlist/presentation/widgets/carousel.dart';
import 'package:porductlist/presentation/widgets/gradient_text_field.dart';
import 'package:porductlist/presentation/widgets/horizontal_avatar.dart';
import 'package:porductlist/presentation/widgets/item_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 42,
        centerTitle: false,
        title: const Text("LOGO"),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(child: GradientTextField()),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
          const SliverToBoxAdapter(child: CarouselWithIndicator()),
          const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
          SliverToBoxAdapter(child: ItemListView()),
          const SliverToBoxAdapter(child: SizedBox(height: 0.0)),
          const SliverToBoxAdapter(child: HorizontalPeopleList()),
        ],
      ),
    );
  }
}
