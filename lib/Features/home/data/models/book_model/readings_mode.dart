
class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({this.text, this.image});

  ReadingModes.fromJson(Map<String, dynamic> json) {
    if(json["text"] is bool) {
      text = json["text"];
    }
    if(json["image"] is bool) {
      image = json["image"];
    }
  }

  static List<ReadingModes> fromList(List<Map<String, dynamic>> list) {
    return list.map(ReadingModes.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["text"] = text;
    _data["image"] = image;
    return _data;
  }
}