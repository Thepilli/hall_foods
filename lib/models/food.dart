class Food {
  final String foodId;
  final String foodImg;
  final String foodname;
  final List alergens;

  Food({
    required this.foodId,
    required this.foodImg,
    required this.foodname,
    required this.alergens,
  });
}

final List<Food> foodList = [
  Food(
    foodId: 'foodId01',
    foodImg: 'assets/images/foodId1.png',
    foodname: 'Vepřové na houbách, rýže',
    alergens: [1],
  ),
  Food(
    foodId: 'foodId02',
    foodImg: 'assets/images/foodId2.png',
    foodname: 'Hovězí rajská, houskový knedlík',
    alergens: [1, 3, 7],
  ),
  Food(
    foodId: 'foodId03',
    foodImg: 'assets/images/foodId3.png',
    foodname: 'Těstovinový salát se zeleninou a sýrem',
    alergens: [1, 3, 7, 10, 12],
  ),
  Food(
    foodId: 'foodId04',
    foodImg: 'assets/images/foodId4.png',
    foodname: 'Sekaná, šťouchané brambory, beraní roh, ajvar',
    alergens: [1, 3, 7, 10, 12],
  ),
  Food(
    foodId: 'foodId05',
    foodImg: 'assets/images/foodId5.png',
    foodname: 'Kuřecí koule na kari, rýže',
    alergens: [1, 3, 7],
  ),
  Food(
    foodId: 'foodId06',
    foodImg: 'assets/images/foodId6.png',
    foodname: 'Cizrnové ragů rýže',
    alergens: [12],
  ),
  Food(
    foodId: 'foodId07',
    foodImg: 'assets/images/foodId7.png',
    foodname: 'Zeleninové červené curry s květákem, jasmínová rýže',
    alergens: [1, 7, 9],
  ),
  Food(
    foodId: 'foodId08',
    foodImg: 'assets/images/foodId8.png',
    foodname: 'Vepřová pečeně na houbách, těstoviny',
    alergens: [1, 3, 7, 9],
  ),
  Food(
    foodId: 'foodId09',
    foodImg: 'assets/images/foodId9.png',
    foodname: 'Hovězí maso na slanině, rýže',
    alergens: [1],
  ),
  Food(
    foodId: 'foodId10',
    foodImg: 'assets/images/foodId10.png',
    foodname: 'Fazolky na smetaně, brambor',
    alergens: [1, 7],
  ),
  Food(
    foodId: 'foodId11',
    foodImg: 'assets/images/foodId11.png',
    foodname: 'Čočka na kyselo, sázené vejce, kyselá okurka',
    alergens: [1, 3, 7, 10, 12],
  ),
  Food(
    foodId: 'foodId12',
    foodImg: 'assets/images/foodId12.png',
    foodname: 'Penne bolognese, parmazán',
    alergens: [1, 3, 7, 9, 12],
  ),
  Food(
    foodId: 'foodId13',
    foodImg: 'assets/images/foodId13.png',
    foodname: 'Vepřový maďarský guláš, houskový knedlík',
    alergens: [1, 3, 7, 12],
  ),
  Food(
    foodId: 'foodId14',
    foodImg: 'assets/images/foodId14.png',
    foodname: 'Asijské nudle se zeleninou',
    alergens: [4, 6],
  ),
  Food(
    foodId: 'foodId15',
    foodImg: 'assets/images/foodId15.png',
    foodname: 'Uzená krkovice, dušené bílé zelí, bramborový knedlík',
    alergens: [1, 3, 7, 12],
  ),
  Food(
    foodId: 'foodId16',
    foodImg: 'assets/images/foodId16.png',
    foodname: 'Jahodové knedlíky s vanilkovým krémem',
    alergens: [1, 3, 7],
  ),
  Food(
    foodId: 'foodId17',
    foodImg: 'assets/images/foodId17.png',
    foodname: 'Masové koule na smetaně, těstovina',
    alergens: [1, 3, 7, 10],
  ),
  Food(
    foodId: 'foodId18',
    foodImg: 'assets/images/foodId18.png',
    foodname: 'Ragů z čočky belugy, vejce',
    alergens: [3, 12],
  ),
  Food(
    foodId: 'foodId19',
    foodImg: 'assets/images/foodId19.png',
    foodname: 'Gratinovaná brokolice s vejcem a mozzarellou, pažitkové brambory',
    alergens: [3, 7],
  ),
  Food(
    foodId: 'foodId20',
    foodImg: 'assets/images/foodId20.png',
    foodname: 'Vepřové na paprice, jasmínová rýže',
    alergens: [1, 3, 7, 9],
  ),
];
