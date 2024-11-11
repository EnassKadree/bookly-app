
class Pdf {
  bool? isAvailable;
  String? acsTokenLink;

  Pdf({this.isAvailable, this.acsTokenLink});

  Pdf.fromJson(Map<String, dynamic> json) {
    if(json["isAvailable"] is bool) {
      isAvailable = json["isAvailable"];
    }
    if(json["acsTokenLink"] is String) {
      acsTokenLink = json["acsTokenLink"];
    }
  }

  static List<Pdf> fromList(List<Map<String, dynamic>> list) {
    return list.map(Pdf.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["isAvailable"] = isAvailable;
    _data["acsTokenLink"] = acsTokenLink;
    return _data;
  }
}