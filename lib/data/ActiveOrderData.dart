class ActiveOrder {
  var images;
  String title;
  double rating;
  String area;
  double price;
  String currency;
  String description;
  ActiveOrder({
    this.images,
    required this.title,
    required this.rating,
    required this.area,
    required this.price,
    required this.currency,
    required this.description,
  });
}

var myActiveOrder = <ActiveOrder>[
  ActiveOrder(
    title: 'thai Causal',
    rating: 4.5,
    area: 'Asian',
    price: 6.5,
    currency: '\$',
    description: 'Expected to arrive in 10 minutes',
    images:
        'https://media.istockphoto.com/photos/padthai-traditional-thai-dish-picture-id1137054240?k=20&m=1137054240&s=612x612&w=0&h=sRLnIqAIUNAL7vED82YLZsr-4KzpMXMIiAJeG5lRsnE=',
  )
];
