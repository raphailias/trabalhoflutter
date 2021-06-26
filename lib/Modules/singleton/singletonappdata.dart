class AppData {
  static final AppData _appData = new AppData._internal();

  late String nick;
  String maild = '30831';
  factory AppData() {
    return _appData;
  }
  AppData._internal();
}

final appData = AppData();
