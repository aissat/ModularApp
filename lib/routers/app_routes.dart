abstract class Routes {
  static const home = _Paths.home;
  static const settings = _Paths.settings;
}

abstract class _Paths {
  static const home = '/';
  static const settings = '/settings';
}

extension ToStringPath on String {
  String toPath(int id) {
    return '${this.substring(0, this.length - 3)}$id';
  }
}
