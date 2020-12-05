import 'dart:ffi';

class Contact {
  int _id;
  String _name;
  //String _title;
  String _phone;

  Contact(this._name, this._phone);
  Contact.forMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
   // this._title = map['title'];
    this._phone = map['phone'];
  }

  int get id => _id;
  String get name => _name;
 // String get title => _title;
  String get phone => _phone;

  set name(String value) {
    _name = value;
  }

  // set title(String value) {
  //   _title = value;
  // }

  set phone(String value) {
    _phone = value;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = this._name;
   // map['title'] = this._title;
    map['phone'] = this._phone;
    return map;
  }
}
