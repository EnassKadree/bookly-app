
import 'equb.dart';
import 'pdf.dart';

class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo({this.country, this.viewability, this.embeddable, this.publicDomain, this.textToSpeechPermission, this.epub, this.pdf, this.webReaderLink, this.accessViewStatus, this.quoteSharingAllowed});

  AccessInfo.fromJson(Map<String, dynamic> json) {
    if(json["country"] is String) {
      country = json["country"];
    }
    if(json["viewability"] is String) {
      viewability = json["viewability"];
    }
    if(json["embeddable"] is bool) {
      embeddable = json["embeddable"];
    }
    if(json["publicDomain"] is bool) {
      publicDomain = json["publicDomain"];
    }
    if(json["textToSpeechPermission"] is String) {
      textToSpeechPermission = json["textToSpeechPermission"];
    }
    if(json["epub"] is Map) {
      epub = json["epub"] == null ? null : Epub.fromJson(json["epub"]);
    }
    if(json["pdf"] is Map) {
      pdf = json["pdf"] == null ? null : Pdf.fromJson(json["pdf"]);
    }
    if(json["webReaderLink"] is String) {
      webReaderLink = json["webReaderLink"];
    }
    if(json["accessViewStatus"] is String) {
      accessViewStatus = json["accessViewStatus"];
    }
    if(json["quoteSharingAllowed"] is bool) {
      quoteSharingAllowed = json["quoteSharingAllowed"];
    }
  }

  static List<AccessInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(AccessInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["country"] = country;
    _data["viewability"] = viewability;
    _data["embeddable"] = embeddable;
    _data["publicDomain"] = publicDomain;
    _data["textToSpeechPermission"] = textToSpeechPermission;
    if(epub != null) {
      _data["epub"] = epub?.toJson();
    }
    if(pdf != null) {
      _data["pdf"] = pdf?.toJson();
    }
    _data["webReaderLink"] = webReaderLink;
    _data["accessViewStatus"] = accessViewStatus;
    _data["quoteSharingAllowed"] = quoteSharingAllowed;
    return _data;
  }
}