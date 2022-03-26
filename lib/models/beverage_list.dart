class BeverageList {
  String name;
  String price;
  String description;
  String type;
  String size;
  String imageAsset;
  int ranking;
  List<String> imageUrls;

  BeverageList({
    required this.name,
    required this.price,
    required this.description,
    required this.type,
    required this.size,
    required this.imageAsset,
    required this.ranking,
    required this.imageUrls,
  });
}

var beverageList = [
  BeverageList(
    name: 'Bubble Milk Tea (Hot/Cold)',
    price: 'IDR 32000',
    description:
    'An incredibly unique looking beverage, Bubble tea is a Taiwanese recipe made by blending a tea base with milk, '
        'fruit and fruit juices, then adding the signature “bubbles” - yummy tapioca pearls that sit at the bottom.',
    type: 'Less Sugar, Normal, Extra Sugar',
    size: 'Small, Medium, Large',
    imageAsset: 'images/signature_menu/41.png',
    ranking: 3,
    imageUrls: [
      'images/signature_menu/42.png',
      'images/signature_menu/43.png',
      'images/signature_menu/44.png',
    ],
  ),

  BeverageList(
    name: 'Chocolaterry (Hot/Cold)',
    price: 'IDR 28000',
    description:
    'This is a classic latte made with Café Bustelo® espresso, combined with steamed milk (or half and half) '
        'and sweetened with rich dark chocolate and Cocoa Cinnamon Sugar Spice Mixture.',
    type: 'Less Sugar, Normal, Extra Sugary',
    size: 'Small, Medium, Large',
    imageAsset: 'images/signature_menu/45.png',
    ranking: 4,
    imageUrls: [
      'images/signature_menu/46.png',
      'images/signature_menu/47.png',
      'images/signature_menu/48.png',
    ],
  ),

  BeverageList(
    name: 'Lemon Mojito (Cold)',
    price: 'IDR 25000',
    description:
    'Instead of fresh basil, you can also use mint leaves or holy basil (tulsi leaves). Mojito can be '
        'made in many batches and makes a good party drink. Its a healthy practice to drink lot of water '
        'and fruit juices during Indian summers. As it keeps you hydrated and is also good for your health and skin.',
    type: 'Less Sugar, Normal, Extra Sugar',
    size: 'Medium',
    imageAsset: 'images/signature_menu/29.png',
    ranking: 3,
    imageUrls: [
      'images/signature_menu/30.png',
      'images/signature_menu/31.png',
      'images/signature_menu/32.png',
    ],
  ),

  BeverageList(
    name: 'Lemonade Juice (Cold)',
    price: 'IDR 25000',
    description:
    'Lemon juice is most commonly used in a drink called lemonade which is made by using lemon juice, water and sugar. '
        'The juice is most widely used for various culinary and non-culinary purposes all over the world. The concentration '
        'of acidic content in the juice varies on variety of the fruit.',
    type: 'Less Sugar, Normal, Extra Sugar',
    size: 'Medium',
    imageAsset: 'images/signature_menu/33.png',
    ranking: 3,
    imageUrls: [
      'images/signature_menu/34.png',
      'images/signature_menu/35.png',
      'images/signature_menu/36.png',
    ],
  ),

  BeverageList(
    name: 'Orange Juice (Cold)',
    price: 'IDR 35000',
    description:
    'Orange juice is a favorite beverage high in antioxidants and micronutrients like vitamin C, folate, and potassium. '
        'Regular consumption has been associated with several health benefits, including improved heart health, decreased '
        'inflammation, and a reduced risk of kidney stones.',
    type: 'Less Sugar, Normal, Extra Sugar',
    size: 'Medium',
    imageAsset: 'images/signature_menu/37.png',
    ranking: 3,
    imageUrls: [
      'images/signature_menu/38.png',
      'images/signature_menu/39.png',
      'images/signature_menu/40.png',
    ],
  ),

  BeverageList(
    name: 'Strawberry Milkshake (Cold)',
    price: 'IDR 40000',
    description:
    'Strawberry milkshakes are one of the most classic and nutritious drinks of all time. It has been a favorite of all of '
        'us and we cannot deny that. It is best to have strawberry in the form of milkshakes and juices because it contains '
        'Vitamin C and is a high source of potassium and magnesium.',
    type: 'Less Sugar, Normal, Extra Sugar',
    size: 'Medium',
    imageAsset: 'images/signature_menu/25.png',
    ranking: 3,
    imageUrls: [
      'images/signature_menu/26.png',
      'images/signature_menu/27.png',
      'images/signature_menu/28.png',
    ],
  ),

  BeverageList(
    name: 'Lemon Mojito (Cold)',
    price: 'IDR 25000',
    description:
    'Instead of fresh basil, you can also use mint leaves or holy basil (tulsi leaves). Mojito can be '
        'made in many batches and makes a good party drink. Its a healthy practice to drink lot of water '
        'and fruit juices during Indian summers. As it keeps you hydrated and is also good for your health and skin.',
    type: 'Less Sugar, Normal, Extra Sugar',
    size: 'Medium',
    imageAsset: 'images/signature_menu/29.png',
    ranking: 3,
    imageUrls: [
      'images/signature_menu/30.png',
      'images/signature_menu/31.png',
      'images/signature_menu/32.png',
    ],
  ),

  BeverageList(
    name: 'Lemonade Juice (Cold)',
    price: 'IDR 25000',
    description:
    'Lemon juice is most commonly used in a drink called lemonade which is made by using lemon juice, water and sugar. '
        'The juice is most widely used for various culinary and non-culinary purposes all over the world. The concentration '
        'of acidic content in the juice varies on variety of the fruit.',
    type: 'Less Sugar, Normal, Extra Sugar',
    size: 'Medium',
    imageAsset: 'images/signature_menu/33.png',
    ranking: 3,
    imageUrls: [
      'images/signature_menu/34.png',
      'images/signature_menu/35.png',
      'images/signature_menu/36.png',
    ],
  ),

  BeverageList(
    name: 'Orange Juice (Cold)',
    price: 'IDR 35000',
    description:
    'Orange juice is a favorite beverage high in antioxidants and micronutrients like vitamin C, folate, and potassium. '
        'Regular consumption has been associated with several health benefits, including improved heart health, decreased '
        'inflammation, and a reduced risk of kidney stones.',
    type: 'Less Sugar, Normal, Extra Sugar',
    size: 'Medium',
    imageAsset: 'images/signature_menu/37.png',
    ranking: 3,
    imageUrls: [
      'images/signature_menu/38.png',
      'images/signature_menu/39.png',
      'images/signature_menu/40.png',
    ],
  ),

  BeverageList(
    name: 'Strawberry Milkshake (Cold)',
    price: 'IDR 40000',
    description:
    'Strawberry milkshakes are one of the most classic and nutritious drinks of all time. It has been a favorite of all of '
        'us and we cannot deny that. It is best to have strawberry in the form of milkshakes and juices because it contains '
        'Vitamin C and is a high source of potassium and magnesium.',
    type: 'Less Sugar, Normal, Extra Sugar',
    size: 'Medium',
    imageAsset: 'images/signature_menu/25.png',
    ranking: 3,
    imageUrls: [
      'images/signature_menu/26.png',
      'images/signature_menu/27.png',
      'images/signature_menu/28.png',
    ],
  ),

  BeverageList(
    name: 'Bubble Milk Tea (Hot/Cold)',
    price: 'IDR 32000',
    description:
    'An incredibly unique looking beverage, Bubble tea is a Taiwanese recipe made by blending a tea base with milk, '
        'fruit and fruit juices, then adding the signature “bubbles” - yummy tapioca pearls that sit at the bottom.',
    type: 'Less Sugar, Normal, Extra Sugar',
    size: 'Small, Medium, Large',
    imageAsset: 'images/signature_menu/41.png',
    ranking: 3,
    imageUrls: [
      'images/signature_menu/42.png',
      'images/signature_menu/43.png',
      'images/signature_menu/44.png',
    ],
  ),

  BeverageList(
    name: 'Chocolaterry (Hot/Cold)',
    price: 'IDR 28000',
    description:
    'This is a classic latte made with Café Bustelo® espresso, combined with steamed milk (or half and half) '
        'and sweetened with rich dark chocolate and Cocoa Cinnamon Sugar Spice Mixture.',
    type: 'Less Sugar, Normal, Extra Sugary',
    size: 'Small, Medium, Large',
    imageAsset: 'images/signature_menu/45.png',
    ranking: 4,
    imageUrls: [
      'images/signature_menu/46.png',
      'images/signature_menu/47.png',
      'images/signature_menu/48.png',
    ],
  ),
];