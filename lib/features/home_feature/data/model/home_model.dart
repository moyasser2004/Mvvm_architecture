import 'package:equatable/equatable.dart';

class BookModel extends Equatable {

  const BookModel({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });

  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  factory BookModel.fromJson(Map<String, dynamic> json){
    return BookModel(
      kind: json["kind"],
      id: json["id"],
      etag: json["etag"],
      selfLink: json["selfLink"],
      volumeInfo: json["volumeInfo"] == null ? null : VolumeInfo.fromJson(json["volumeInfo"]),
      saleInfo: json["saleInfo"] == null ? null : SaleInfo.fromJson(json["saleInfo"]),
      accessInfo: json["accessInfo"] == null ? null : AccessInfo.fromJson(json["accessInfo"]),
      searchInfo: json["searchInfo"] == null ? null : SearchInfo.fromJson(json["searchInfo"]),
    );
  }

  @override
  List<Object?> get props => [
    kind, id, etag, selfLink, volumeInfo, saleInfo, accessInfo, searchInfo, ];
}

class AccessInfo extends Equatable {
  const AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Pdf? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  factory AccessInfo.fromJson(Map<String, dynamic> json){
    return AccessInfo(
      country: json["country"],
      viewability: json["viewability"],
      embeddable: json["embeddable"],
      publicDomain: json["publicDomain"],
      textToSpeechPermission: json["textToSpeechPermission"],
      epub: json["epub"] == null ? null : Epub.fromJson(json["epub"]),
      pdf: json["pdf"] == null ? null : Pdf.fromJson(json["pdf"]),
      webReaderLink: json["webReaderLink"],
      accessViewStatus: json["accessViewStatus"],
      quoteSharingAllowed: json["quoteSharingAllowed"],
    );
  }

  @override
  List<Object?> get props => [
    country, viewability, embeddable, publicDomain, textToSpeechPermission, epub, pdf, webReaderLink, accessViewStatus, quoteSharingAllowed, ];
}

class Epub extends Equatable {
  const Epub({
    required this.isAvailable,
  });

  final bool? isAvailable;

  factory Epub.fromJson(Map<String, dynamic> json){
    return Epub(
      isAvailable: json["isAvailable"],
    );
  }

  @override
  List<Object?> get props => [
    isAvailable, ];
}

class Pdf extends Equatable {
  const Pdf({
    required this.isAvailable,
    required this.acsTokenLink,
  });

  final bool? isAvailable;
  final String? acsTokenLink;

  factory Pdf.fromJson(Map<String, dynamic> json){
    return Pdf(
      isAvailable: json["isAvailable"],
      acsTokenLink: json["acsTokenLink"],
    );
  }

  @override
  List<Object?> get props => [
    isAvailable, acsTokenLink, ];
}

class SaleInfo extends Equatable {
  const SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
  });

  final String? country;
  final String? saleability;
  final bool? isEbook;

  factory SaleInfo.fromJson(Map<String, dynamic> json){
    return SaleInfo(
      country: json["country"],
      saleability: json["saleability"],
      isEbook: json["isEbook"],
    );
  }

  @override
  List<Object?> get props => [
    country, saleability, isEbook, ];
}

class SearchInfo extends Equatable {
  const SearchInfo({
    required this.textSnippet,
  });

  final String? textSnippet;

  factory SearchInfo.fromJson(Map<String, dynamic> json){
    return SearchInfo(
      textSnippet: json["textSnippet"],
    );
  }

  @override
  List<Object?> get props => [
    textSnippet, ];
}

class VolumeInfo extends Equatable {
  const VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  final String? title;
  final List<String> authors;
  final String? publisher;
  final DateTime? publishedDate;
  final String? description;
  final List<IndustryIdentifier> industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String> categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  factory VolumeInfo.fromJson(Map<String, dynamic> json){
    return VolumeInfo(
      title: json["title"],
      authors: json["authors"] == null ? [] : List<String>.from(json["authors"]!.map((x) => x)),
      publisher: json["publisher"],
      publishedDate: DateTime.tryParse(json["publishedDate"] ?? ""),
      description: json["description"],
      industryIdentifiers: json["industryIdentifiers"] == null ? [] : List<IndustryIdentifier>.from(json["industryIdentifiers"]!.map((x) => IndustryIdentifier.fromJson(x))),
      readingModes: json["readingModes"] == null ? null : ReadingModes.fromJson(json["readingModes"]),
      pageCount: json["pageCount"],
      printType: json["printType"],
      categories: json["categories"] == null ? [] : List<String>.from(json["categories"]!.map((x) => x)),
      maturityRating: json["maturityRating"],
      allowAnonLogging: json["allowAnonLogging"],
      contentVersion: json["contentVersion"],
      panelizationSummary: json["panelizationSummary"] == null ? null : PanelizationSummary.fromJson(json["panelizationSummary"]),
      imageLinks: json["imageLinks"] == null ? null : ImageLinks.fromJson(json["imageLinks"]),
      language: json["language"],
      previewLink: json["previewLink"],
      infoLink: json["infoLink"],
      canonicalVolumeLink: json["canonicalVolumeLink"],
    );
  }

  @override
  List<Object?> get props => [
    title, authors, publisher, publishedDate, description, industryIdentifiers, readingModes, pageCount, printType, categories, maturityRating, allowAnonLogging, contentVersion, panelizationSummary, imageLinks, language, previewLink, infoLink, canonicalVolumeLink, ];
}

class ImageLinks extends Equatable {
  const ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  final String? smallThumbnail;
  final String? thumbnail;

  factory ImageLinks.fromJson(Map<String, dynamic> json){
    return ImageLinks(
      smallThumbnail: json["smallThumbnail"],
      thumbnail: json["thumbnail"],
    );
  }

  @override
  List<Object?> get props => [
    smallThumbnail, thumbnail, ];
}

class IndustryIdentifier extends Equatable {
  const IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  final String? type;
  final String? identifier;

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json){
    return IndustryIdentifier(
      type: json["type"],
      identifier: json["identifier"],
    );
  }

  @override
  List<Object?> get props => [
    type, identifier, ];
}

class PanelizationSummary extends Equatable {
  const PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });

  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  factory PanelizationSummary.fromJson(Map<String, dynamic> json){
    return PanelizationSummary(
      containsEpubBubbles: json["containsEpubBubbles"],
      containsImageBubbles: json["containsImageBubbles"],
    );
  }

  @override
  List<Object?> get props => [
    containsEpubBubbles, containsImageBubbles, ];
}

class ReadingModes extends Equatable {
  const ReadingModes({
    required this.text,
    required this.image,
  });

  final bool? text;
  final bool? image;

  factory ReadingModes.fromJson(Map<String, dynamic> json){
    return ReadingModes(
      text: json["text"],
      image: json["image"],
    );
  }

  @override
  List<Object?> get props => [
    text, image, ];
}
