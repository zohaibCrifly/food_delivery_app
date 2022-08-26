class PastOrder {
  var image;
  //int order_id;
  String title;
  String description;
  double price;
  double rating;
  String currency;
  PastOrder(
      { //required this.order_id,
      this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.rating,
      required this.currency});
}

var pastOrders = <PastOrder>[
  PastOrder(
    //order_id: 1,
    image:
        'https://media.istockphoto.com/photos/pad-thai-picture-id510163478?k=20&m=510163478&s=612x612&w=0&h=38sl3q02yxAqJWLSfm3Tve1cs9E8z3bt0BMfQwCwPtk=',
    title: 'Thai Causal-1',
    description: 'Favirot thai extra grilled,\n extra filling-1',
    price: 6.19,
    rating: 4.5,
    currency: '\$',
  ),
  PastOrder(
    // order_id: 1,
    image:
        'https://media.istockphoto.com/photos/pad-thai-picture-id510163478?k=20&m=510163478&s=612x612&w=0&h=38sl3q02yxAqJWLSfm3Tve1cs9E8z3bt0BMfQwCwPtk=',
    title: 'Thai Causal-2',
    description: 'Favirot thai extra grilled,\n extra filling-1',
    price: 6.19,
    rating: 4.5,
    currency: '\$',
  ),
  PastOrder(
    // order_id: 1,
    image:
        'https://media.istockphoto.com/photos/pad-thai-picture-id510163478?k=20&m=510163478&s=612x612&w=0&h=38sl3q02yxAqJWLSfm3Tve1cs9E8z3bt0BMfQwCwPtk=',
    title: 'Thai Causal-3',
    description: 'Favirot thai extra grilled,\n extra filling-1',
    price: 6.19,
    rating: 4.5,
    currency: '\$',
  ),
  PastOrder(
    // order_id: 1,
    image:
        'https://media.istockphoto.com/photos/pad-thai-picture-id510163478?k=20&m=510163478&s=612x612&w=0&h=38sl3q02yxAqJWLSfm3Tve1cs9E8z3bt0BMfQwCwPtk=',
    title: 'Thai Causal-4',
    description: 'Favirot thai extra grilled,\n extra filling-1',
    price: 6.19,
    rating: 4.5,
    currency: '\$',
  ),
];
