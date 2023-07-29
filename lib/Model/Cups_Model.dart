class CoffeeItems {
   String id='';
   String name='';
  String image='';
 double price=0;
  bool selected=false;

  CoffeeItems(  String id,
   String name,
   String image,
   double price,
   bool selected,)
  {
    this.id=id;
    this.name=name;
    this.selected=selected;
    this.image= image;
    this.price=price;
  }

}

List<CoffeeItems> Coffee = [
  CoffeeItems(
       '1',
       'Americano',
    'assets/GLASS-0.png',
       2.0,
      false,
  ),
  CoffeeItems(
       '5', 'Chai',  'assets/GLASS-4.png',  6.0,false),
  CoffeeItems(
       '4',
       'Macchiato',
       'assets/GLASS-3.png',
       5.0,
       false,
  ),
  CoffeeItems(
       '9',
     'Brew',
    'assets/GLASS-8.png',
     3.0,
     false,),
  CoffeeItems(
     '3',
     'Caramel',
      'assets/GLASS-2.png',
      4.0,
       false,
  ),
  CoffeeItems(
       '2',
     'Mocha',
     'assets/GLASS-1.png',
     3.0,
     false,
  ),
  CoffeeItems(
      '6',
      'Cappuccino',
      'assets/GLASS-5.png',
      7.0,
     false,
  ),
  CoffeeItems(
     '7',
     'Strawberries',
     'assets/GLASS-6.png',
    8.0  ,
     false,
  ),
  CoffeeItems(
    '8', 'Java',  'assets/GLASS-7.png',  2.0,
     false,
  ),
];
