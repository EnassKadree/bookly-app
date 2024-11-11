class IndustryIdentifiers {
  String? type;
  String? identifier;

  IndustryIdentifiers({this.type, this.identifier});

  IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
    if(json["type"] is String) {
      type = json["type"];
    }
    if(json["identifier"] is String) {
      identifier = json["identifier"];
    }
  }

  static List<IndustryIdentifiers> fromList(List<Map<String, dynamic>> list) {
    return list.map(IndustryIdentifiers.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["type"] = type;
    _data["identifier"] = identifier;
    return _data;
  }
}