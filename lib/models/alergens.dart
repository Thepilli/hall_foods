class Alergen {
  final int alergenId;
  final String alergenName;

  Alergen({
    required this.alergenId,
    required this.alergenName,
  });
}

final List<Alergen> alergensList = [
  Alergen(alergenId: 1, alergenName: "Cereals containing gluten"),
  Alergen(alergenId: 2, alergenName: "Crustaceans"),
  Alergen(alergenId: 3, alergenName: "Eggs"),
  Alergen(alergenId: 4, alergenName: "Fish"),
  Alergen(alergenId: 5, alergenName: "Peanuts"),
  Alergen(alergenId: 6, alergenName: "Soybeans"),
  Alergen(alergenId: 7, alergenName: "Milk (including lactose)"),
  Alergen(alergenId: 8, alergenName: "Nuts"),
  Alergen(alergenId: 9, alergenName: "Celery"),
  Alergen(alergenId: 10, alergenName: "Mustard"),
  Alergen(alergenId: 11, alergenName: "Sesame seeds"),
  Alergen(alergenId: 12, alergenName: "Sulphur dioxide and sulphites"),
  Alergen(alergenId: 13, alergenName: "Lupin"),
  Alergen(alergenId: 14, alergenName: "Molluscs"),
];
