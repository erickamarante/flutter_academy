// Baseado na lista acima.
// 1 - Remover os duplicados
// 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
// 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
//     e mostre a quantidade de pessoas com mais de 18 anos
// 4 - Encontre a pessoa mais velha.

main(List<String> args) {
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];


  print("==========================================================");
  print("=======================MÓDULO - 6=========================");
  print("==========================================================");

  // 1 - Remover os duplicados
  final listNoDuplicated = removeDuplicated(pessoas);
  print("1- Lista não duplicada: \n$listNoDuplicated\n");

  //2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  showGenderList(listNoDuplicated);

  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  showMoreThan18YearsOld(listNoDuplicated);

  //4 - Pessoa Mais velha
  showOldestPerson(listNoDuplicated);

  print("==========================================================");
  print("===========================FIM============================");
  print("==========================================================");
}

Set<String> removeDuplicated(List<String> array) {
  return Set.of(array);
}

void showGenderList(Set array) {
  final maleList =
      array.where((element) => getGender(element) == 'Masculino').toList();
  final femaleList =
      array.where((element) => getGender(element) == 'Feminino').toList();
  print("2 - Lista Masculina: $maleList\n Lista Feminina: $femaleList");
}

void showMoreThan18YearsOld(Set array) {
  final response = array.where((element) => getAge(element) > 18).toList();

  print(
      "\n3 - Pessoas maiores que 18 anos: \n $response \n Quantidade de pessoas maiores que 18 anos: ${response.length}");
}

void showOldestPerson(Set array) {
  final oldestList = array.toList();
  oldestList.sort((a, b) {
    return getAge(a).compareTo(getAge(b));
  });

  print("\n4 - A pessoa mais velha é ${getName(oldestList.last)} com ${getAge(oldestList.last)} anos");
}

String getName(String pessoa) {
  return pessoa.split("|")[0];
}

int getAge(String pessoa) {
  return int.parse(pessoa.split("|")[1]);
}

String getGender(String pessoa) {
  return pessoa.split("|")[2];
}
