class Cat {
  final String name;
  final String breed;
  final int age;

  Cat({
    required this.name,
    required this.breed,
    required this.age,
  });
}

class HouseCat extends Cat {
  final String ownerName;
  final String ownerAddress;

  HouseCat({
    required super.name,
    required super.breed,
    required super.age,
    required this.ownerName,
    required this.ownerAddress,
  });
}

class WildCat extends Cat {
  final String habitat;

  WildCat({
    required super.name,
    required super.breed,
    required super.age,
    required this.habitat,
  });
}
