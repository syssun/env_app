class AddressBean{
  String name;
  String phone;
  String area;
  String info;

  set setName(String name) {
    this.name = name;
  }
  String get getName {
    return '${name}';
  }
  set sePhone(String phone) {
    this.phone = phone;
  }
  String get getPhone {
    return '${phone}';
  }

  set seArea(String area) {
    this.area = area;
  }
  String get getArea {
    return '${area}';
  }

  set seInfo(String info) {
    this.info = info;
  }
  String get getInfo {
    return '${info}';
  }


}