
class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({this.containsEpubBubbles, this.containsImageBubbles});

  PanelizationSummary.fromJson(Map<String, dynamic> json) {
    if(json["containsEpubBubbles"] is bool) {
      containsEpubBubbles = json["containsEpubBubbles"];
    }
    if(json["containsImageBubbles"] is bool) {
      containsImageBubbles = json["containsImageBubbles"];
    }
  }

  static List<PanelizationSummary> fromList(List<Map<String, dynamic>> list) {
    return list.map(PanelizationSummary.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["containsEpubBubbles"] = containsEpubBubbles;
    _data["containsImageBubbles"] = containsImageBubbles;
    return _data;
  }
}