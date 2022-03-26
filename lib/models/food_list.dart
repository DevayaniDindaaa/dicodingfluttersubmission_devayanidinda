class FoodList {
  String name;
  String price;
  String description;
  String type;
  String size;
  String imageAsset;
  int ranking;
  List<String> imageUrls;

  FoodList({
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

var foodList = [
  FoodList(
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

  FoodList(
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

  FoodList(
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

  FoodList(
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

  FoodList(
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

  FoodList(
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

  FoodList(
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

  FoodList(
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

  FoodList(
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

  FoodList(
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

  FoodList(
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

  FoodList(
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

];