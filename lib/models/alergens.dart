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
  Alergen(
      alergenDetail:
          'Obiloviny obsahující lepek, konkrétně: pšenice, žito, ječmen, oves, špalda, kamut nebo jejich hybridní odrůdy a výrobky z nich',
      alergenImg: 'assets/alergens/1_glutten.png',
      alergenId: 1,
      alergenName: "Lepek"),
  Alergen(
      alergenDetail: 'Korýši a výrobky nich',
      alergenImg: 'assets/alergens/2_crustaceans.png',
      alergenId: 2,
      alergenName: "Korýši"),
  Alergen(alergenDetail: 'Vejce a výrobky z nich', alergenImg: 'assets/alergens/3_eggs.png', alergenId: 3, alergenName: "Vejce"),
  Alergen(
      alergenDetail: 'Ryby a výrobky z nich, kromě rybí želatiny',
      alergenImg: 'assets/alergens/4_fish.png',
      alergenId: 4,
      alergenName: "Ryby"),
  Alergen(
      alergenDetail: 'Jádra podzemnice olejné (arašídy) a výrobky z nich',
      alergenImg: 'assets/alergens/5_peanuts.png',
      alergenId: 5,
      alergenName: "Arašídy"),
  Alergen(
      alergenDetail: 'Sójové boby a výrobky z nich, kromě zcela rafinovaného sójového oleje a tuku',
      alergenImg: 'assets/alergens/6_soybean.png',
      alergenId: 6,
      alergenName: "Sója"),
  Alergen(
      alergenDetail:
          'Mléko a výrobky z něj (včetně laktózy), kromě syrovátky použité k výrobě alkoholických destilátů a laktitolu',
      alergenImg: 'assets/alergens/7_milk.png',
      alergenId: 7,
      alergenName: "Mléko)"),
  Alergen(
      alergenDetail:
          'Skořápkové plody, konkrétně: mandle, lískové ořechy, vlašské ořechy, kešu ořechy, pekanové ořechy, para ořechy , pistácie, makadamie a výrobky z nich, kromě ořechů použitých k výrobě alkoholických destilátů, včetně ethanolu zemědělského původu',
      alergenImg: 'assets/alergens/8_nuts.png',
      alergenId: 8,
      alergenName: "Skořápkové plody"),
  Alergen(alergenDetail: 'Celer a výrobky z něj', alergenImg: 'assets/alergens/9_celery.png', alergenId: 9, alergenName: "Celer"),
  Alergen(
      alergenDetail: 'Hořčice a výrobky z ní',
      alergenImg: 'assets/alergens/10_mustard.png',
      alergenId: 10,
      alergenName: "Hořčice"),
  Alergen(alergenDetail: '', alergenImg: 'assets/alergens/11_sesame.png', alergenId: 11, alergenName: "Sezam"),
  Alergen(
      alergenDetail:
          'Oxid siřičitý a siřičitany v koncentracích vyšších než 10 mg/kg nebo 10 mg/l, vyjádřeno jako celkový SO2 , které se propočítají pro výrobky určené k přímé spotřebě nebo ke spotřebě po rekonstituování podle pokynů výrobce',
      alergenImg: 'assets/alergens/12_sulphites.png',
      alergenId: 12,
      alergenName: "Oxid siřičitý a siřičitany"),
  Alergen(
      alergenDetail: 'Vlčí bob (lupina) a výrobky z něj',
      alergenImg: 'assets/alergens/13_lupin.png',
      alergenId: 13,
      alergenName: "Vlčí bob"),
  Alergen(
      alergenDetail: 'Měkkýši a výrobky z nich',
      alergenImg: 'assets/alergens/14_molluscs.png',
      alergenId: 14,
      alergenName: "Měkkýši"),
];
