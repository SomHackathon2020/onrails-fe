import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[            
            Container(
                  child: Image.network("https://cdn.someecards.com/posts/meet-the-conservative-grandpa-on-twitter-who-chrissy-teigan-made-famous-Ku5.png")
              ),
            _getProfile(),
            //
            _getLogros(),
            //
            _getLastActivities()
          ],
        ),
      ),
    );
  }
  
  Widget _getProfile(){
    return Title(
                color: Colors.black, child: 
                Text('Josep Perelada',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 22
                ),
              )
    );
  }

  Container _getLastActivities(){
    return Container(
          margin: EdgeInsets.symmetric(vertical: 40.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                //color: Colors.red,
                //child: Image.network("https://www.sabermassermas.com/wp-content/uploads/2013/10/Qu%C3%A9-es-y-c%C3%B3mo-usar-la-Banca-M%C3%B3vil-a-su-favor.png"),
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              //new Padding(padding: new EdgeInsets.all(5.00)),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          ),
        );
  }

  Widget _getLogros(){
    String url = "https://media.istockphoto.com/vectors/best-concept-design-trophy-for-victory-award-championship-achievement-vector-id1025282144?k=6&m=1025282144&s=170667a&w=0&h=7hggqlqejAnobH9g-ElQLWU1PfGOy5iUNHtI2onb8Yg=";
    List<String> images = new List();
    return Container(
      padding: EdgeInsets.symmetric(horizontal:25),
      // clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _putAchieve(url, 50, images),
          _putAchieve(url, 50, images)
          //Image.network("https://www.sabermassermas.com/wp-content/uploads/2013/10/Qu%C3%A9-es-y-c%C3%B3mo-usar-la-Banca-M%C3%B3vil-a-su-favor.png"),
        ]
      )
    );
  }
}

Container _putAchieve(String url, double ample, List<String> images){
  return Container(
    padding: EdgeInsets.all(5.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: ample,
              child: Image.network(url)
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 50,
              child: Image.network(url)
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 50,
              child: Image.network(url)
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 50,
              child: Image.network(url)
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 50,
              child: Image.network(url)
            )
          ],
        ),
      ]
    )
  );

}
