import 'package:flutter/material.dart';

import '../../models/product.dart';

class ProductListView extends StatelessWidget {
  final List<Products> products;

  const ProductListView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          color: Colors.white,
          elevation: 0,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Image
                Stack(
                  children: [
                    Container(
                      width: 95,
                      height: 110,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: SizedBox(
                        width: 65,
                        height: 70,
                        child: Image.asset(
                          product.image,
                          fit: BoxFit.cover,
                        ),
                      )),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image(
                          image: AssetImage(
                              'assets/solid_crown${product.salesRank}.png'),
                          width: 18,
                          height: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                // Product Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              product.name,
                              style: const TextStyle(
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (var desc in product.description)
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('• ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Expanded(child: Text(desc)),
                              ],
                            ),
                          // Other product details...
                        ],
                      ),
                      // const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const SizedBox(width: 4),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '${product.rating} ',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.w700),
                                ),
                                TextSpan(
                                  text: '(${product.reviewCount})',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ...product.tags.map(
                            (tag) => Padding(
                              padding: const EdgeInsets.only(right: 4, top: 4),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 4),
                                  child: Text(
                                    tag,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
