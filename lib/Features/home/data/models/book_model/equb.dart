class Epub {
  bool? isAvailable;

  Epub({this.isAvailable});

  Epub.fromJson(Map<String, dynamic> json) {
    if(json["isAvailable"] is bool) {
      isAvailable = json["isAvailable"];
    }
  }

  static List<Epub> fromList(List<Map<String, dynamic>> list) {
    return list.map(Epub.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["isAvailable"] = isAvailable;
    return _data;
  }
}