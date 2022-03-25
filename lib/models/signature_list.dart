class SignatureList {
  String name;
  String price;
  String description;
  String type;
  String size;
  String imageAsset;
  int ranking;
  List<String> imageUrls;

  SignatureList({
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

var signatureList = [
  SignatureList(
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

  SignatureList(
    name: 'Chicken Curry Rice',
    price: 'IDR 65000',
    description:
    'The bite-sized chunks of meat, the thick-cut vegetables, the rich and creamy brown curry sauce, and the fluffy rice '
        'are what makes every bite so comforting and exciting to eat. Not only it’s a meal that’s easy to make on busy nights, '
        'but it also tastes better the second day.',
    type: 'Spicy, Non Spicy',
    size: 'Medium, Large',
    imageAsset: 'images/signature_menu/17.png',
    ranking: 5,
    imageUrls: [
      'images/signature_menu/18.png',
      'images/signature_menu/19.png',
      'images/signature_menu/20.png',
    ],
  ),

  SignatureList(
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

  SignatureList(
    name: 'Hamburger & Chips',
    price: 'IDR 55000',
    description:
    'In a large bowl combine the hamburger, crumbled potato chips, grated cheese, salt and pepper. Mix to combine.',
    type: 'With Mayonaise, No Mayonaise',
    size: 'Medium, Large',
    imageAsset: 'images/signature_menu/9.png',
    ranking: 3,
    imageUrls: [
      'images/signature_menu/10.png',
      'images/signature_menu/11.png',
      'images/signature_menu/12.png',
    ],
  ),

  SignatureList(
    name: 'Italian Spaghetti',
    price: 'IDR 70000',
    description:
    'In a large saucepan over medium heat, combine tomato sauce, diced tomatoes, bay leaves, '
        'Italian seasoning, garlic powder, basil, oregano, salt, pepper and Italian sausage; mix well.',
    type: 'Spicy, Non Spicy',
    size: 'Small, Medium',
    imageAsset: 'images/signature_menu/21.png',
    ranking: 3,
    imageUrls: [
      'images/signature_menu/22.png',
      'images/signature_menu/23.png',
      'images/signature_menu/24.png',
    ],
  ),

  SignatureList(
    name: 'Japanese Ramen',
    price: 'IDR 58000',
    description:
    'Ramen (/ˈrɑːmən/) (拉麺, ラーメン, rāmen, IPA: [ɾaꜜːmeɴ]) is a Japanese noodle soup. It consists of '
        'Chinese-style wheat noodles served in a meat or (occasionally) fish-based broth, often flavored with soy sauce or miso, '
        'and uses toppings such as sliced pork (叉焼, chāshū), nori (dried seaweed), menma, and scallions.',
    type: 'Spicy, Non Spicy',
    size: 'Small, Medium, Large',
    imageAsset: 'images/signature_menu/13.png',
    ranking: 4,
    imageUrls: [
      'images/signature_menu/14.png',
      'images/signature_menu/15.png',
      'images/signature_menu/16.png',
    ],
  ),

  SignatureList(
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

  SignatureList(
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

  SignatureList(
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

  SignatureList(
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

  SignatureList(
    name: 'Tek Tek Fried Rice',
    price: 'IDR 62000',
    description:
    'Tek Tek Fried Rice refer to fried rice sold by travelling street hawkers that hitting the wok making "tek-tek" '
        'sounds to announce their wares. It is common in Jakarta and some large cities in Java, where street food hawkers '
        'commonly sell it together with fried noodle from their food carts.',
    type: 'Spicy, Non Spicy',
    size: 'Medium, Large',
    imageAsset: 'images/signature_menu/1.png',
    ranking: 5,
    imageUrls: [
      'images/signature_menu/2.png',
      'images/signature_menu/3.png',
      'images/signature_menu/4.png',
    ],
  ),

  SignatureList(
    name: 'Tenderloin with French Fries',
    price: 'IDR 98000',
    description:
    'A steak cut from the beef tenderloin, which is the inside muscle of the short loin. It is among the most desirable, '
        'tender, and expensive cuts of beef. The tenderloin makes an excellent roast or it can be cut into steaks. '
        'Grilling, broiling, and sautéing are the best methods for cooking tenderloin steaks.',
    type: 'Medium Rare, Rare, Well Done',
    size: 'Medium',
    imageAsset: 'images/signature_menu/5.png',
    ranking: 4,
    imageUrls: [
      'images/signature_menu/6.png',
      'images/signature_menu/7.png',
      'images/signature_menu/8.png',
    ],
  ),
];