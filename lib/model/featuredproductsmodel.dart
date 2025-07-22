class FeaturedProduct {
  final String imageUrl;
  final String partName;
  final String modelName;

  FeaturedProduct({
    required this.imageUrl,
    required this.partName,
    required this.modelName,
  });
}

final List<FeaturedProduct> featuredProducts = [
  FeaturedProduct(
    imageUrl: 'assets/mask_group_2.png',
    partName: 'Engine Part',
    modelName: 'AED 33',
  ),
  FeaturedProduct(
    imageUrl: 'assets/mask_group_1.png',
    partName: 'Body Part',
    modelName: 'AED 33',
  ),
  FeaturedProduct(
    imageUrl: 'assets/mask_group_2.png',
    partName: 'Engine Part',
    modelName: 'AED 33',
  ),
  FeaturedProduct(
    imageUrl: 'assets/mask_group_1.png',
    partName: 'Body Part',
    modelName: 'AED 33',
  ),
  FeaturedProduct(
    imageUrl: 'assets/mask_group_2.png',
    partName: 'Engine Part',
    modelName: 'AED 33',
  ),
  FeaturedProduct(
    imageUrl: 'assets/mask_group_1.png',
    partName: 'Body Part',
    modelName: 'AED 33',
  ),
];
