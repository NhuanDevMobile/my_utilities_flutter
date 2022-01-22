class RoutePaths {
  static const initial = '/initial/';
  // channel
  static final login = _RoutePathsType(initial, '/direct/messages');

}

class _RoutePathsType {
  final String _name;
  final String _rootPath;

  _RoutePathsType(this._rootPath, this._name);

  String get name => _name;

  String get path => _rootPath + name;
}