

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  ImageLinks.fromJson(Map<String, dynamic> json) {
    if(json["smallThumbnail"] is String) {
      smallThumbnail = json["smallThumbnail"];
    }
    if(json["thumbnail"] is String) {
      thumbnail = json["thumbnail"];
    }
  }

  static List<ImageLinks> fromList(List<Map<String, dynamic>> list) {
    return list.map(ImageLinks.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["smallThumbnail"] = smallThumbnail;
    _data["thumbnail"] = thumbnail;
    return _data;
  }
}
