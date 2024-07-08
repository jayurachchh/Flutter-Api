class User
{

  late int  _uid ;
  late String _uname;
  late String _ucityname;

  String get ucityname => _ucityname;

  set ucityname(String ucityname) {
    _ucityname = ucityname;
  }

  int get uid => _uid;

  set uid(int uid)
  {
    _uid = uid;
  }

  String get uname => _uname;
  set uname(String uname)
  {
    _uname = uname;
  }

}