class Productdata {
  var image;
  String title;
  String description;
  double rating;
  String currency;
  double price;
  String deliveryTime;
  String tag;
  String weight;
  String longDescription;
  double calorires;
  String arrivaltime;
  List extras;
  Productdata({
    required this.title,
    this.image,
    required this.currency,
    required this.deliveryTime,
    required this.description,
    required this.price,
    required this.rating,
    required this.tag,
    required this.weight,
    required this.longDescription,
    required this.calorires,
    required this.arrivaltime,
    required this.extras,
  });
}

var productOrderList = <Productdata>[
  Productdata(
    image:
        'https://media.istockphoto.com/photos/pad-thai-picture-id510163478?k=20&m=510163478&s=612x612&w=0&h=38sl3q02yxAqJWLSfm3Tve1cs9E8z3bt0BMfQwCwPtk=',
    title: 'Thai Casual',
    currency: '\$',
    deliveryTime: '25-30 min',
    description: 'Favourite thai extra griled, extra filling',
    price: 6.19,
    rating: 4.5,
    tag: 'Traditional Thai Food',
    weight: '250 G',
    longDescription:
        'Spicy seasond seafood noodles exra topping hot. mint sauhe, rough chile',
    calorires: 145,
    arrivaltime: '30 min',
    extras: ['Extra Tomato', 'Extra Savoury', 'Extra Olive', 'Exta Cheese'],
  ),
  Productdata(
    image:
        'https://media.istockphoto.com/photos/pad-thai-picture-id510163478?k=20&m=510163478&s=612x612&w=0&h=38sl3q02yxAqJWLSfm3Tve1cs9E8z3bt0BMfQwCwPtk=',
    title: 'Thai Casual',
    currency: '\$',
    deliveryTime: '25-30 min',
    description: 'Favourite thai extra griled, extra filling',
    price: 6.19,
    rating: 4.5,
    tag: 'Traditional Thai Food',
    weight: '250 G',
    longDescription:
        'Spicy seasond seafood noodles exra topping hot. mint sauhe, rough chile',
    calorires: 145,
    arrivaltime: '30 min',
    extras: ['Extra Tomato', 'Extra Savoury', 'Extra Olive', 'Exta Cheese'],
  ),
  Productdata(
    image:
        'https://media.istockphoto.com/photos/pad-thai-picture-id510163478?k=20&m=510163478&s=612x612&w=0&h=38sl3q02yxAqJWLSfm3Tve1cs9E8z3bt0BMfQwCwPtk=',
    title: 'Thai Casual',
    currency: '\$',
    deliveryTime: '25-30 min',
    description: 'Favourite thai extra griled, extra filling',
    price: 6.19,
    rating: 4.5,
    tag: 'Traditional Thai Food',
    weight: '250 G',
    longDescription:
        'Spicy seasond seafood noodles exra topping hot. mint sauhe, rough chile',
    calorires: 145,
    arrivaltime: '30 min',
    extras: ['Extra Tomato', 'Extra Savoury', 'Extra Olive', 'Exta Cheese'],
  ),
  Productdata(
    image:
        'https://media.istockphoto.com/photos/pad-thai-picture-id510163478?k=20&m=510163478&s=612x612&w=0&h=38sl3q02yxAqJWLSfm3Tve1cs9E8z3bt0BMfQwCwPtk=',
    title: 'Thai Casual',
    currency: '\$',
    deliveryTime: '25-30 min',
    description: 'Favourite thai extra griled, extra filling',
    price: 6.19,
    rating: 4.5,
    tag: 'Traditional Thai Food',
    weight: '250 G',
    longDescription:
        'Spicy seasond seafood noodles exra topping hot. mint sauhe, rough chile',
    calorires: 145,
    arrivaltime: '30 min',
    extras: ['Extra Tomato', 'Extra Savoury', 'Extra Olive', 'Exta Cheese'],
  ),
];
