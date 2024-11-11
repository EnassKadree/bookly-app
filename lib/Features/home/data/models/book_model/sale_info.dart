
class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;

  SaleInfo({this.country, this.saleability, this.isEbook});

  SaleInfo.fromJson(Map<String, dynamic> json) {
    if(json["country"] is String) {
      country = json["country"];
    }
    if(json["saleability"] is String) {
      saleability = json["saleability"];
    }
    if(json["isEbook"] is bool) {
      isEbook = json["isEbook"];
    }
  }

  static List<SaleInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(SaleInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["country"] = country;
    _data["saleability"] = saleability;
    _data["isEbook"] = isEbook;
    return _data;
  }
}