class Product {
  final int id, price;
  final String title, description, image;
  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.description,
      required this.image});
}

List<Product> products = [
  Product(
    id: 1,
    price: 56,
    title: "Classic Leather Arm Chair",
    image: "assets/images/i1.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 2,
    price: 68,
    title: "Poppy Plastic Tub Chair",
    image: "assets/images/i2.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 3,
    price: 39,
    title: "Bar Stool Chair",
    image: "assets/images/i3.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 4,
    price: 120,
    title: "Black Lather Sofa",
    image: "assets/images/bsofa.png",
    description:
        "Pigmented leather is the most durable with a consistent surface appearance, while aniline leather is more natural looking, but less resistant to soiling.",
  ),
  Product(
    id: 5,
    price: 82,
    title: "Recliner Armchair",
    image: "assets/images/aarmchair.png",
    description:
        "An armchair is both functional and comfortable. Its extended side supports to give complete rest to your arms. You may use the comfortable design of our wooden",
  ),
  Product(
    id: 6,
    price: 51,
    title: "Iron Standard Bench",
    image: "assets/images/abanch.png",
    description:
        "The offered Cast Iron Garden Bench is designed using the best quality raw material and cutting edge technology under the guidance of adept professionals.",
  ),
  Product(
    id: 7,
    price: 150,
    title: "Heritage Wing Armchair",
    image: "assets/images/carmchair.png",
    description:
        "Add a style statement to your home with this unique wing chair in vegan leather. Handmade with a tufted back and curved wings.",
  ),
  Product(
    id: 8,
    price: 218,
    title: "Orrsta White Corner Sofa",
    image: "assets/images/fsofa.png",
    description:
        "This sofa quickly and easily transforms into a spacious bed – and turns the living room into a bedroom. ",
  ),
  Product(
    id: 9,
    price: 179,
    title: "Luxurious Wooden Armchair",
    image: "assets/images/earmchair.png",
    description:
        "One chair that you will love to have in your home if you want to give your decor a very luxurious & sophisticated vibe. Let yourself be carried away by the originality of a unique and one-of-a-kind decor.",
  ),
  Product(
    id: 10,
    price: 40,
    title: "Patio Bench",
    image: "assets/images/cbanch.png",
    description:
        "Vestre is a Norwegian manufacturer of urban furniture. Long term sustainability. Quality products in solid construction. Take a look at our product selection and order now.",
  ),
];
