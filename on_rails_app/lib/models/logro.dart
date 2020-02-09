import 'dart:convert';

List<Achievement> trackFromJson(String str) => List<Achievement>.from(json.decode(str).map((x) => Achievement.fromJson(x)));

String trackToJson(List<Achievement> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Achievement {
    int id;
    String name;
    String xp;
    int categoriesId;
    String picture;

    Achievement({
        this.id,
        this.name,
        this.xp,
        this.categoriesId,
        this.picture,
    });

    factory Achievement.fromJson(Map<String, dynamic> json) => Achievement(
        id: json["id"],
        name: json["name"],
        xp: json["xp"],
        categoriesId: json["categories_id"],
        picture: json["picture"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "xp": xp,
        "categories_id": categoriesId,
        "picture": picture,
    };
}


class Achievements {
  List<Achievement> items = new List();

  Achievements();

  Achievements.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final logro = new Achievement.fromJson(item);
      items.add( logro );
    }
  }
}