class Usermodel
{
late   int _Uid;
late String _UName;
late String _DOB;
late int _CityId;
late bool _favourite;

  bool get favourite => _favourite;

  set favourite(bool favourite) {
    _favourite = favourite;
  }

  int get Uid => _Uid;

  set Uid(int Uid) {
    _Uid = Uid;
  }

  String get UName => _UName;

  set UName(String UName) {
    _UName = UName;
  }

  String get DOB => _DOB;

  set DOB(String DOB) {
    _DOB = DOB;
  }

  int get CityId => _CityId;

  set CityId(int CityId) {
    _CityId = CityId;
  }
}