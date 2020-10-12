void main() {
  var sexo = 'masculino';
  var idade = 18;

  if (sexo == 'masculino' && idade == 18) {
    print('maior de idade é homem');
  }

  if (idade == 20 || sexo == 'masculino') {
    print('maior de idade é homem');
  }

  if (!(idade == 20 && sexo == 'masculino')) {
    print('maior de idade é homem');
  }
}
