class Products {
  final String name;
  final List<String> description;
  final String image;
  final bool isPremium;
  final int salesRank;
  final String price;
  final String rating;
  final String reviewCount;
  final List<String> tags;

  Products({
    required this.name,
    required this.description,
    required this.image,
    required this.isPremium,
    required this.salesRank,
    required this.price,
    required this.rating,
    required this.reviewCount,
    required this.tags,
  });
}
