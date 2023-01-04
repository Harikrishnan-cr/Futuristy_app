import 'dart:convert';

List<CatagoriesModel> catagoriesModelFromJson(String str) =>
    List<CatagoriesModel>.from(
        json.decode(str).map((x) => CatagoriesModel.fromJson(x)));

String catagoriesModelToJson(List<CatagoriesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CatagoriesModel {
  CatagoriesModel({
    this.id,
    this.code,
    this.name,
    this.parent,
    this.slug,
    this.dateAdded,
    this.lastModified,
    this.fontAwesomeClass,
    this.thumbnail,
    this.order,
    this.numberOfCourses,
  });

  String? id;
  String? code;
  String? name;
  String? parent;
  String? slug;
  String? dateAdded;
  String? lastModified;
  String? fontAwesomeClass;
  String? thumbnail;
  String? order;
  int? numberOfCourses;

  factory CatagoriesModel.fromJson(Map<String, dynamic> json) =>
      CatagoriesModel(
        id: json["id"],
        code: json["code"],
        name: json["name"],
        parent: json["parent"],
        slug: json["slug"],
        dateAdded: json["date_added"],
        lastModified: json["last_modified"],
        fontAwesomeClass: json["font_awesome_class"],
        thumbnail: json["thumbnail"],
        order: json["order"],
        numberOfCourses: json["number_of_courses"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
        "parent": parent,
        "slug": slug,
        "date_added": dateAdded,
        "last_modified": lastModified,
        "font_awesome_class": fontAwesomeClass,
        "thumbnail": thumbnail,
        "order": order,
        "number_of_courses": numberOfCourses,
      };
}
