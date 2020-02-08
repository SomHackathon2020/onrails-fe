import 'dart:convert';

User trackFromJson(String str) => User.fromJson(json.decode(str));

String trackToJson(User data) => json.encode(data.toJson());

class User {
    String name;
    String email;
    String phone;
    String bornName;
    int points;
    String photo;

    User({
        this.name,
        this.email,
        this.phone,
        this.bornName,
        this.points,
        this.photo,
    });

    User.fromJson(Map<String, dynamic> json){
        name      = json["name"];
        email     = json["email"];
        phone     = json["phone"];
        bornName  = json["born_name"];
        points    = json["points"];
        photo     = json["photo"];
    }

    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "phone": phone,
        "bornName": bornName,
        "points": points,
        "photo": photo,//photo link
     };

    getPhoto(){
      if ( photo == null ) {
      return 'http://forum.spaceengine.org/styles/se/theme/images/no_avatar.jpg';
    } else {
      return photo;
    }
    }
}
