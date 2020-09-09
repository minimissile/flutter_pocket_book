class AccountData {
  String type;
  String name;
  int asset;

  AccountData({this.type, this.name, this.asset});

  AccountData.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    name = json['name'];
    asset = json['asset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['name'] = this.name;
    data['asset'] = this.asset;
    return data;
  }
}

