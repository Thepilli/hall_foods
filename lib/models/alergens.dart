class Alergen {
  final int alergenId;
  final String alergenName;
  final String alergenImg;
  final String alergenDetail;

  Alergen({
    required this.alergenId,
    required this.alergenName,
    required this.alergenImg,
    required this.alergenDetail,
  });
}

final List<Alergen> alergensList = [
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/1_glutten.png', alergenId: 1, alergenName: "Cereals containing gluten"),
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/2_crustaceans.png', alergenId: 2, alergenName: "Crustaceans"),
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/3_eggs.png', alergenId: 3, alergenName: "Eggs"),
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/4_fish.png', alergenId: 4, alergenName: "Fish"),
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/5_peanuts.png', alergenId: 5, alergenName: "Peanuts"),
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/6_soybean.png', alergenId: 6, alergenName: "Soybeans"),
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/7_milk.png', alergenId: 7, alergenName: "Milk (including lactose)"),
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/8_nuts.png', alergenId: 8, alergenName: "Nuts"),
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/9_celery.png', alergenId: 9, alergenName: "Celery"),
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/10_mustard.png', alergenId: 10, alergenName: "Mustard"),
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/11_sesame.png', alergenId: 11, alergenName: "Sesame seeds"),
  Alergen(
      alergenDetail: '',
      alergenImg: 'assets/alergens/12_sulphites.png',
      alergenId: 12,
      alergenName: "Sulphur dioxide and sulphites"),
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/13_lupin.png', alergenId: 13, alergenName: "Lupin"),
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/14_molluscs.png', alergenId: 14, alergenName: "Molluscs"),
];
