enum Routes {
  auth,
  overview,
}

extension RoutesExtension on Routes {
  String get value {
    if (this == Routes.overview) {
      return 'overview';
    }
    return 'auth';
  }
}
