


import 'dart:convert';

List<TopCourseModel> topCourseModelFromJson(String str) => List<TopCourseModel>.from(json.decode(str).map((x) => TopCourseModel.fromJson(x)));

String topCourseModelToJson(List<TopCourseModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TopCourseModel {
    TopCourseModel({
        this.id,
        this.title,
        this.shortDescription,
        this.description,
        this.outcomes,
        this.language,
        this.categoryId,
        this.subCategoryId,
        this.section,
        this.requirements,
        this.price,
        this.discountFlag,
        this.discountedPrice,
        this.level,
        this.userId,
        this.thumbnail,
        this.videoUrl,
        this.dateAdded,
        this.lastModified,
        this.visibility,
        this.isTopCourse,
        this.isAdmin,
        this.status,
        this.courseOverviewProvider,
        this.metaKeywords,
        this.metaDescription,
        this.isFreeCourse,
        this.topCourseModelExternal,
        this.externalLink,
        this.rating,
        this.numberOfRatings,
        this.instructorName,
        this.totalEnrollment,
        this.shareableLink,
        this.fullPrice,
        this.videoCount,
    });

    String? id;
    String? title;
    String? shortDescription;
    String? description;
    List<dynamic>? outcomes;
    String? language;
    String? categoryId;
    String? subCategoryId;
    String? section;
    List<dynamic>? requirements;
    String? price;
    String? discountFlag;
    String? discountedPrice;
    String? level;
    String? userId;
    String? thumbnail;
    String? videoUrl;
    String? dateAdded;
    String? lastModified;
    dynamic visibility;
    String? isTopCourse;
    String? isAdmin;
    String? status;
    String? courseOverviewProvider;
    String? metaKeywords;
    String? metaDescription;
    dynamic isFreeCourse;
    String? topCourseModelExternal;
    String? externalLink;
    int? rating;
    int? numberOfRatings;
    String? instructorName;
    int? totalEnrollment;
    String? shareableLink;
    String? fullPrice;
    String? videoCount;

    factory TopCourseModel.fromJson(Map<String, dynamic> json) => TopCourseModel(
        id: json["id"],
        title: json["title"],
        shortDescription: json["short_description"],
        description: json["description"],
        outcomes: List<dynamic>.from(json["outcomes"].map((x) => x)),
        language: json["language"],
        categoryId: json["category_id"],
        subCategoryId: json["sub_category_id"],
        section: json["section"],
        requirements: List<dynamic>.from(json["requirements"].map((x) => x)),
        price: json["price"],
        discountFlag: json["discount_flag"],
        discountedPrice: json["discounted_price"],
        level: json["level"],
        userId: json["user_id"],
        thumbnail: json["thumbnail"],
        videoUrl: json["video_url"],
        dateAdded: json["date_added"],
        lastModified: json["last_modified"],
        visibility: json["visibility"],
        isTopCourse: json["is_top_course"],
        isAdmin: json["is_admin"],
        status: json["status"],
        courseOverviewProvider: json["course_overview_provider"],
        metaKeywords: json["meta_keywords"],
        metaDescription: json["meta_description"],
        isFreeCourse: json["is_free_course"],
        topCourseModelExternal: json["external"],
        externalLink: json["external_link"],
        rating: json["rating"],
        numberOfRatings: json["number_of_ratings"],
        instructorName: json["instructor_name"],
        totalEnrollment: json["total_enrollment"],
        shareableLink: json["shareable_link"],
        fullPrice: json["full_price"],
        videoCount: json["video_count"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "short_description": shortDescription,
        "description": description,
        "outcomes": List<dynamic>.from(outcomes!.map((x) => x)),
        "language": language,
        "category_id": categoryId,
        "sub_category_id": subCategoryId,
        "section": section,
        "requirements": List<dynamic>.from(requirements!.map((x) => x)),
        "price": price,
        "discount_flag": discountFlag,
        "discounted_price": discountedPrice,
        "level": level,
        "user_id": userId,
        "thumbnail": thumbnail,
        "video_url": videoUrl,
        "date_added": dateAdded,
        "last_modified": lastModified,
        "visibility": visibility,
        "is_top_course": isTopCourse,
        "is_admin": isAdmin,
        "status": status,
        "course_overview_provider": courseOverviewProvider,
        "meta_keywords": metaKeywords,
        "meta_description": metaDescription,
        "is_free_course": isFreeCourse,
        "external": topCourseModelExternal,
        "external_link": externalLink,
        "rating": rating,
        "number_of_ratings": numberOfRatings,
        "instructor_name": instructorName,
        "total_enrollment": totalEnrollment,
        "shareable_link": shareableLink,
        "full_price": fullPrice,
        "video_count": videoCount,
    };
}
