import 'package:rastro_genetico2/models/animal.dart';
import 'package:rastro_genetico2/models/raca.dart';
import 'package:rastro_genetico2/dao/database.dart';

void utils() {
  generatedRaca();
  generatedAnimal();
}

void generatedRaca() async {
  final database =
      await $FloorAppDatabase.databaseBuilder('rastrogenetico.db').build();
  final racaDao = database.racaDao;
  final raca1 = Raca(id: 1, nome: 'Nelore');
  final raca2 = Raca(id: 2, nome: 'Angus');
  final raca3 = Raca(id: 3, nome: 'Gil');
  final raca4 = Raca(id: 4, nome: 'Jersey');
  final raca5 = Raca(id: 5, nome: 'Pantaneira');

  await racaDao.insertRaca(raca1);
  await racaDao.insertRaca(raca2);
  await racaDao.insertRaca(raca3);
  await racaDao.insertRaca(raca4);
  await racaDao.insertRaca(raca5);
}

void generatedAnimal() async {
  final database =
      await $FloorAppDatabase.databaseBuilder('rastrogenetico.db').build();
  final animalDao = database.animalDao;
  final animal1 = Animal(id: 1, nome: 'Nome1', dataNascimento: "15/07/2022");
  final animal2 = Animal(id: 2, nome: 'Nome2', dataNascimento: "15/08/2022");
  final animal3 = Animal(id: 3, nome: 'Nome3', dataNascimento: "16/09/2022");
  final animal4 = Animal(id: 4, nome: 'Nome4', dataNascimento: "17/10/2022");
  final animal5 = Animal(id: 5, nome: 'Nome5', dataNascimento: "18/11/2022");

  await animalDao.insertAnimal(animal1);
  await animalDao.insertAnimal(animal2);
  await animalDao.insertAnimal(animal3);
  await animalDao.insertAnimal(animal4);
  await animalDao.insertAnimal(animal5);
}
