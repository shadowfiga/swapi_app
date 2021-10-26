enum Font {
  montserrat,
  nunitoSans,
}

extension FontsExtension on Font {
  String get value {
    switch (this) {
      case Font.montserrat:
        return 'Montserrat';
      default:
        return 'NunitoSans';
    }
  }
}
