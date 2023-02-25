import 'dart:convert';

Creator creatorFromJson(String str) => Creator.fromJson(json.decode(str));

String creatorToJson(Creator data) => json.encode(data.toJson());

class Creator {
  Creator({
    required this.creator,
  });

  Creator.withError(String errorMessage) {
    error = errorMessage;
  }

  CreatorClass? creator;
  String? error;

  factory Creator.fromJson(Map<String, dynamic> json) => Creator(
        creator: CreatorClass.fromJson(json["creator"]),
      );

  Map<String, dynamic> toJson() => {
        "creator": creator?.toJson(),
      };

  @override
  String toString() {
    return creator.toString();
  }
}

class Meeting {
  Meeting({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.slots,
    required this.startAt,
    required this.endAt,
    required this.isPrivate,
    required this.creatorId,
    required this.creator,
  });

  String id;
  String title;
  String description;
  int price;
  int slots;
  DateTime startAt;
  DateTime endAt;
  bool isPrivate;
  String creatorId;
  CreatorClass creator;

  factory Meeting.fromJson(Map<String, dynamic> json) => Meeting(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        slots: json["slots"],
        startAt: DateTime.parse(json["startAt"]),
        endAt: DateTime.parse(json["endAt"]),
        isPrivate: json["isPrivate"],
        creatorId: json["creatorId"],
        creator: CreatorClass.fromJson(json["creator"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "slots": slots,
        "startAt": startAt.toIso8601String(),
        "endAt": endAt.toIso8601String(),
        "isPrivate": isPrivate,
        "creatorId": creatorId,
        "creator": creator.toJson(),
      };

  @override
  String toString() {
    return '$startAt - $title';
  }
}

class CreatorClass {
  CreatorClass({
    required this.id,
    required this.name,
    required this.username,
    required this.profilPhoto,
    required this.isVerified,
    required this.professions,
    this.meetings,
  });

  String id;
  String name;
  String username;
  String profilPhoto;
  bool isVerified;
  List<Profession> professions;
  List<Meeting>? meetings;

  factory CreatorClass.fromJson(Map<String, dynamic> json) => CreatorClass(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        profilPhoto: json["profilPhoto"],
        isVerified: json["isVerified"],
        professions: List<Profession>.from(
            json["professions"].map((x) => Profession.fromJson(x))),
        meetings: json["meetings"] == null
            ? []
            : List<Meeting>.from(
                json["meetings"]!.map((x) => Meeting.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "profilPhoto": profilPhoto,
        "isVerified": isVerified,
        "professions": List<dynamic>.from(professions.map((x) => x.toJson())),
        "meetings": meetings == null
            ? []
            : List<dynamic>.from(meetings!.map((x) => x.toJson())),
      };
}

class Profession {
  Profession({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Profession.fromJson(Map<String, dynamic> json) => Profession(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
