
import 'dart:convert';

User trackFromJson(String str) => User.fromJson(json.decode(str));

String trackToJson(User data) => json.encode(data.toJson());

class User {
    int id;
    String name;
    String email;
    String phone;
    DateTime birth;
    String actualxp;
    String picture;
    int levelsId;
    dynamic token;
    UserLevel level;

    User({
        this.id,
        this.name,
        this.email,
        this.phone,
        this.birth,
        this.actualxp,
        this.picture,
        this.levelsId,
        this.token,
        this.level,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        birth: DateTime.parse(json["birth"]),
        actualxp: json["actualxp"],
        picture: json["picture"],
        levelsId: json["levels_id"],
        level: UserLevel.fromJson(json["level"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "birth": "${birth.year.toString().padLeft(4, '0')}-${birth.month.toString().padLeft(2, '0')}-${birth.day.toString().padLeft(2, '0')}",
        "actualxp": actualxp,
        "picture": picture,
        "levels_id": levelsId,
        "level": level.toJson(),
    };
}

class UserLevel {
    String name;
    String description;

    UserLevel({
        this.name,
        this.description,
    });

    factory UserLevel.fromJson(Map<String, dynamic> json) => UserLevel(
        name: json["name"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
    };
}

class Users {
  List<User> items = new List();

  Users();

  Users.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final usuario = new User.fromJson(item);
      items.add( usuario );
    }
  }
}
