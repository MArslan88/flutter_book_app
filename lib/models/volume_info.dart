import 'package:flutter_book_app/models/image_links.dart';

class VolumeInfo {
  String? title;
  List<String>? authors;
  ImageLinks? imageLinks;

  VolumeInfo({this.title, this.authors, this.imageLinks});

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    var volumeInfoParsed = VolumeInfo();
    volumeInfoParsed.title = json['title'];
    volumeInfoParsed.authors = [];
    for (var authorSTR in json['authors']) {
      volumeInfoParsed.authors?.add(authorSTR as String);
    }
    volumeInfoParsed.imageLinks = ImageLinks.fromJson(json['imageLinks']);
    return volumeInfoParsed;
  }
}
