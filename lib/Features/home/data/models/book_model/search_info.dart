
class SearchInfo {
  String? textSnippet;

  SearchInfo({this.textSnippet});

  SearchInfo.fromJson(Map<String, dynamic> json) {
    if(json["textSnippet"] is String) {
      textSnippet = json["textSnippet"];
    }
  }

  static List<SearchInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(SearchInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["textSnippet"] = textSnippet;
    return _data;
  }
}