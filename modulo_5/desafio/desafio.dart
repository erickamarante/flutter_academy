// Baseado no array acima monte um relatório onde mostre
// Apresente a quantidade de pacientes com mais de 20 anos
// Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

void main(List<String> args) {
  final pacientesMaior20Anos = List<String>();
  final familiaRahman = List<String>();
  final familiaSilva = List<String>();
  final familiaVerne = List<String>();

  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Paciente > 20 anos
  for (var paciente in pacientes) {
    final array = paciente.split("|");
    final age = int.parse(array[1]);

    if (age > 20) {
      pacientesMaior20Anos.add(paciente);
    }
  }

  print("Enunciado 1");
  print("======================================================================================");
  print(
      "Qtde de paciente maiores que 20 anos é de ${pacientesMaior20Anos.length} paciente(s)");
  print("======================================================================================");

  // Agrupado por família
  for (var paciente in pacientes) {
    final arrayPaciente = paciente.split("|");
    final arrayName = arrayPaciente[0].split(" ");

    final surname = arrayName.reduce((value, element) => element);

    switch (surname) {
      case 'Rahman':
        familiaRahman.add(arrayPaciente[0]);
        break;
      case 'Silva':
        familiaSilva.add(arrayPaciente[0]);
        break;
      case 'Verne':
        familiaVerne.add(arrayPaciente[0]);
        break;
      default:
    }

  }
  
  print("\nEnunciado 2");
  print("================");
  print("Rahman Family");
  print("================");
  for (var item in familiaRahman) {
    print(item);
  }


  print("\n================");
  print("Silva Family");
  print("================");
  for (var item in familiaSilva) {
    print(item);
  }

  print("\n================");
  print("Verne Family");
  print("================");
  for (var item in familiaVerne) {
    print(item);
  }
  
}
