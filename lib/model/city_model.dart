class Citymodel
{
  late int _CityId;
  late String _CityName;
  late int _StateId;

  int get CityId => _CityId;

  set CityId(int CityId) {
    _CityId = CityId;
  }


  String get CityName => _CityName;

  set CityName(String CityName) {
    _CityName = CityName;
  }


  int get StateId => _StateId;

  set StateId(int StateId) {
    _StateId = StateId;
  }
}