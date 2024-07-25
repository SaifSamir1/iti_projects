
class CategoryItemModel{
  final String image;
  final String title;

  CategoryItemModel({required this.image, required this.title});
}

List<CategoryItemModel> categoryItems =[
  CategoryItemModel(image: "assets/images/buety.png", title: "Beauty"),
  CategoryItemModel(image: "assets/images/fashion.png", title: "Fashion"),
  CategoryItemModel(image: "assets/images/kids.png", title: "Kids"),
  CategoryItemModel(image: "assets/images/mens.png", title: "Mens"),
  CategoryItemModel(image: "assets/images/women.png", title: "Women"),
];

List<CategoryItemModel> categoryItemsIti =[
  CategoryItemModel(image: "assets/images/addidas.png", title: "Adidas"),
  CategoryItemModel(image: "assets/images/nike.png", title: "Nike"),
  CategoryItemModel(image: "assets/images/fila.jpg", title: "Fila"),
  CategoryItemModel(image: "assets/images/puma.jpg", title: "Puma"),
];
