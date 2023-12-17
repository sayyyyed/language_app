class Language {
  final String name;
  final String imagePath;

  Language(this.name, this.imagePath);
}

final List<Language> languagesUnavailable = [
  Language('Spanish', 'assets/img/spain.png'),
  Language('Russian', 'assets/img/russia.png'),
  Language('Korean', 'assets/img/skorea.png'),
  Language('Italian', 'assets/img/italy.png'),
];
final List<Language> languages = [
  Language('German', 'assets/img/deu.png'),
  Language('Portuguese', 'assets/img/portugal.png'),
];
