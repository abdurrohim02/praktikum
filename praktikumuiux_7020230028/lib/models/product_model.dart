class Product {
  final String name;
  final String price; 
  final String image;
  final String description;

  Product({required this.name, required this.price, required this.image, required this.description});
}

List<Product> dummyProducts = [
  Product(
    name: "Mie Indomie",
    price: "Rp 8.000",
    image: "assets/indomie.jpg",
    description: "Mie instan dengan rasa yang lezat dan gurih.",
  ),
  Product(
    name: "Mie Banglades",
    price: "Rp 15.000",
    image: "assets/bangladesh.jpg",
    description: "Mie instan dengan rasa yang lezat dan gurih.",
  ),
  Product(
    name: "Mie Aceh",
    price: "Rp 8.000",
    image: "assets/aceh.jpg",
    description: "Mie instan dengan rasa yang lezat dan gurih.",
  ),
  Product(
    name: "Mie Nyemek",
    price: "Rp 8.000",
    image: "assets/nyemek.jpg",
    description: "Mie instan dengan rasa yang lezat dan gurih.",
  ),
];