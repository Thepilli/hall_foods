class Food {
  final String foodId;
  final String foodImg;
  final String foodname;
  final List alergens;
  final bool isVegetarian;

  Food({
    required this.isVegetarian,
    required this.foodId,
    required this.foodImg,
    required this.foodname,
    required this.alergens,
  });
}

final List<Food> foodList = [
  Food(
    foodId: 'foodId01',
    foodImg: 'assets/food/foodId1.png',
    foodname: 'Vepřové na houbách, rýže',
    isVegetarian: false,
    alergens: [1],
  ),
  Food(
    foodId: 'foodId02',
    foodImg: 'assets/food/foodId2.png',
    foodname: 'Hovězí rajská, houskový knedlík',
    isVegetarian: false,
    alergens: [1, 3, 7],
  ),
  Food(
    foodId: 'foodId03',
    foodImg: 'assets/food/foodId3.png',
    foodname: 'Těstovinový salát se zeleninou a sýrem',
    isVegetarian: true,
    alergens: [1, 3, 7, 10, 12],
  ),
  Food(
    foodId: 'foodId04',
    foodImg: 'assets/food/foodId4.png',
    foodname: 'Sekaná, šťouchané brambory, beraní roh, ajvar',
    isVegetarian: false,
    alergens: [1, 3, 7, 10, 12],
  ),
  Food(
    foodId: 'foodId05',
    foodImg: 'assets/food/foodId5.png',
    foodname: 'Kuřecí koule na kari, rýže',
    isVegetarian: false,
    alergens: [1, 3, 7],
  ),
  Food(
    foodId: 'foodId06',
    foodImg: 'assets/food/foodId6.png',
    foodname: 'Cizrnové ragů rýže',
    isVegetarian: true,
    alergens: [12],
  ),
  Food(
    foodId: 'foodId07',
    foodImg: 'assets/food/foodId7.png',
    foodname: 'Zeleninové červené curry s květákem, jasmínová rýže',
    isVegetarian: true,
    alergens: [1, 7, 9],
  ),
  Food(
    foodId: 'foodId08',
    foodImg: 'assets/food/foodId8.png',
    foodname: 'Vepřová pečeně na houbách, těstoviny',
    isVegetarian: false,
    alergens: [1, 3, 7, 9],
  ),
  Food(
    foodId: 'foodId09',
    foodImg: 'assets/food/foodId9.png',
    foodname: 'Hovězí maso na slanině, rýže',
    isVegetarian: false,
    alergens: [1],
  ),
  Food(
    foodId: 'foodId10',
    foodImg: 'assets/food/foodId10.png',
    foodname: 'Fazolky na smetaně, brambor',
    isVegetarian: true,
    alergens: [1, 7],
  ),
  Food(
    foodId: 'foodId11',
    foodImg: 'assets/food/foodId11.png',
    foodname: 'Čočka na kyselo, sázené vejce, kyselá okurka',
    isVegetarian: true,
    alergens: [1, 3, 7, 10, 12],
  ),
  Food(
    foodId: 'foodId12',
    foodImg: 'assets/food/foodId12.png',
    foodname: 'Penne bolognese, parmazán',
    isVegetarian: false,
    alergens: [1, 3, 7, 9, 12],
  ),
  Food(
    foodId: 'foodId13',
    foodImg: 'assets/food/foodId13.png',
    foodname: 'Vepřový maďarský guláš, houskový knedlík',
    isVegetarian: false,
    alergens: [1, 3, 7, 12],
  ),
  Food(
    foodId: 'foodId14',
    foodImg: 'assets/food/foodId14.png',
    foodname: 'Asijské nudle se zeleninou',
    isVegetarian: true,
    alergens: [4, 6],
  ),
  Food(
    foodId: 'foodId15',
    foodImg: 'assets/food/foodId15.png',
    foodname: 'Uzená krkovice, dušené bílé zelí, bramborový knedlík',
    isVegetarian: false,
    alergens: [1, 3, 7, 12],
  ),
  Food(
    foodId: 'foodId16',
    foodImg: 'assets/food/foodId16.png',
    foodname: 'Jahodové knedlíky s vanilkovým krémem',
    isVegetarian: true,
    alergens: [1, 3, 7],
  ),
  Food(
    foodId: 'foodId17',
    foodImg: 'assets/food/foodId17.png',
    foodname: 'Masové koule na smetaně, těstovina',
    isVegetarian: false,
    alergens: [1, 3, 7, 10],
  ),
  Food(
    foodId: 'foodId18',
    foodImg: 'assets/food/foodId18.png',
    foodname: 'Ragů z čočky belugy, vejce',
    isVegetarian: true,
    alergens: [3, 12],
  ),
  Food(
    foodId: 'foodId19',
    foodImg: 'assets/food/foodId19.png',
    foodname: 'Gratinovaná brokolice s vejcem a mozzarellou, pažitkové brambory',
    isVegetarian: true,
    alergens: [3, 7],
  ),
  Food(
    foodId: 'foodId20',
    foodImg: 'assets/food/foodId20.png',
    foodname: 'Vepřové na paprice, jasmínová rýže',
    isVegetarian: false,
    alergens: [1, 3, 7, 9],
  ),
];
