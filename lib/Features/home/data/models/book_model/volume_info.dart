
import 'image_links.dart';
import 'industry_identifiers.dart';
import 'panelization_summary.dart';
import 'readings_mode.dart';

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  double? averageRating; 
  int? ratingCount;      
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.averageRating,
    this.ratingCount,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json["title"] as String?;
    authors = json["authors"] == null ? null : List<String>.from(json["authors"]);
    publisher = json["publisher"] as String?;
    publishedDate = json["publishedDate"] as String?;
    description = json["description"] as String?;
    industryIdentifiers = json["industryIdentifiers"] == null
        ? null
        : (json["industryIdentifiers"] as List)
            .map((e) => IndustryIdentifiers.fromJson(e))
            .toList();
    readingModes = json["readingModes"] == null
        ? null
        : ReadingModes.fromJson(json["readingModes"]);
    pageCount = json["pageCount"] as int?;
    printType = json["printType"] as String?;
    categories = json["categories"] == null ? null : List<String>.from(json["categories"]);
    averageRating = (json["averageRating"] is int)
        ? (json["averageRating"] as int).toDouble() // Convert int to double if necessary
        : json["averageRating"] as double?;
    ratingCount = json["ratingsCount"] as int?;
    maturityRating = json["maturityRating"] as String?;
    allowAnonLogging = json["allowAnonLogging"] as bool?;
    contentVersion = json["contentVersion"] as String?;
    panelizationSummary = json["panelizationSummary"] == null
        ? null
        : PanelizationSummary.fromJson(json["panelizationSummary"]);
    imageLinks = json["imageLinks"] == null ? null : ImageLinks.fromJson(json["imageLinks"]);
    language = json["language"] as String?;
    previewLink = json["previewLink"] as String?;
    infoLink = json["infoLink"] as String?;
    canonicalVolumeLink = json["canonicalVolumeLink"] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["title"] = title;
    if (authors != null) {
      data["authors"] = authors;
    }
    data["publisher"] = publisher;
    data["publishedDate"] = publishedDate;
    data["description"] = description;
    if (industryIdentifiers != null) {
      data["industryIdentifiers"] = industryIdentifiers?.map((e) => e.toJson()).toList();
    }
    if (readingModes != null) {
      data["readingModes"] = readingModes?.toJson();
    }
    data["pageCount"] = pageCount;
    data["printType"] = printType;
    if (categories != null) {
      data["categories"] = categories;
    }
    data["averageRating"] = averageRating;
    data["ratingCount"] = ratingCount;
    data["maturityRating"] = maturityRating;
    data["allowAnonLogging"] = allowAnonLogging;
    data["contentVersion"] = contentVersion;
    if (panelizationSummary != null) {
      data["panelizationSummary"] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      data["imageLinks"] = imageLinks?.toJson();
    }
    data["language"] = language;
    data["previewLink"] = previewLink;
    data["infoLink"] = infoLink;
    data["canonicalVolumeLink"] = canonicalVolumeLink;
    return data;
  }
}