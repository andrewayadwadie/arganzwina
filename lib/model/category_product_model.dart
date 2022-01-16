class CategoryProductModel {
  final int categoryId;
  final String categoryName;

  CategoryProductModel({
    required this.categoryId,
    required this.categoryName,
  });

  factory CategoryProductModel.fromJson(Map<String, dynamic> jsonData) {
    return CategoryProductModel(
      categoryId: jsonData['categoryId'],
      categoryName: jsonData['categoryName'],
    );
  }
}
