
import 'dart:convert';

List<Evento> trackFromJson(String str) => List<Evento>.from(json.decode(str).map((x) => Evento.fromJson(x)));

String trackToJson(List<Evento> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Evento {
    int id;
    String name;
    String capacity;
    String description;
    String xp;
    int associationsId;
    int categoriesId;
    String lon;
    String lat;
    String address;
    dynamic picture;
    dynamic price;
    dynamic startdate;
    dynamic enddate;
    double distance;

    Evento({
        this.id,
        this.name,
        this.capacity,
        this.description,
        this.xp,
        this.associationsId,
        this.categoriesId,
        this.lon,
        this.lat,
        this.address,
        this.picture,
        this.price,
        this.startdate,
        this.enddate,
        this.distance,
    });

    factory Evento.fromJson(Map<String, dynamic> json) => Evento(
        id: json["id"],
        name: json["name"],
        capacity: json["capacity"],
        description: json["description"],
        xp: json["xp"],
        associationsId: json["associations_id"],
        categoriesId: json["categories_id"],
        lon: json["lon"],
        lat: json["lat"],
        address: json["address"],
        picture: json["picture"],
        price: json["price"],
        startdate: json["startdate"],
        enddate: json["enddate"],
        distance: json["distance"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "capacity": capacity,
        "description": description,
        "xp": xp,
        "associations_id": associationsId,
        "categories_id": categoriesId,
        "lon": lon,
        "lat": lat,
        "address": address,
        "picture": picture,
        "price": price,
        "startdate": startdate,
        "enddate": enddate,
        "distance": distance,
    };
}


class Eventos {
  List<Evento> items = new List();

  Eventos();

  Eventos.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final evento = new Evento.fromJson(item);
      items.add( evento );
    }
  }
}
