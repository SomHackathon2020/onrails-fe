import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_rails_app/components/actividadComponent.dart';
import 'package:on_rails_app/models/usuario.dart';
import 'package:on_rails_app/providers/UserProvider.dart';
import 'package:on_rails_app/components/actividadComponent2.dart';
import 'package:on_rails_app/components/actividadComponent3.dart';
import 'package:pie_chart/pie_chart.dart';

class MainPage extends StatelessWidget {
  
  final userProvider = new UserProvider();
  UserProvider myUser;
  @override
  Widget build(BuildContext context) {
    myUser = UserProvider();
    return Scaffold(
      body: SafeArea(
              child: ListView(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20,),
                  Stack(
                    children: <Widget>[
                    generatePie(context),
                    Container(
                      padding: EdgeInsets.symmetric(vertical:80),
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                                FutureBuilder(
                                  future: myUser.getMyUserInfo(),
                                  builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
                                    if(snapshot.hasData){
                                      return _insideTheCircle(snapshot.data);
                                    }else{
                                      return CircularProgressIndicator();
                                    }
                                  },
                                ),
                            ],
                          ),
                    )
                    ]
                    ),
                  SizedBox(height: 10),
                  mensajeMotivacional(userProvider),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:20),
                    child: Divider(color: Colors.black)
                    ),
                  initialText(userProvider),
                  EventComponent(),
                  EventComponent2(),
                  EventComponent3()
                ], 
        ),
      ),
    );
  }


  Widget generatePie(BuildContext context){
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Flutter", () => 5);
    dataMap.putIfAbsent("React", () => 3);
    dataMap.putIfAbsent("Xamarin", () => 2);
    dataMap.putIfAbsent("Ionic", () => 2);

    return PieChart(
        chartType: ChartType.ring,
        dataMap: dataMap,
        animationDuration: Duration(milliseconds: 800),
        chartLegendSpacing: 30.0,
        chartRadius: MediaQuery.of(context).size.width / 1.8,
        showChartValuesInPercentage: false,
        showChartValues: false,
        showChartValuesOutside: true,
        chartValueBackgroundColor: Colors.grey[200],
        colorList: [Colors.red, Colors.yellow, Colors.blue, Colors.green],
        showLegends: false,
        legendPosition: LegendPosition.bottom,
        decimalPlaces: 0,
        showChartValueLabel: false,
        initialAngle: 90,
        chartValueStyle: defaultChartValueStyle.copyWith(
          color: Color.fromARGB(0, 0, 0, 0)//make values invisible
        ),
    );
  }

  Widget initialText(UserProvider userProvider){
    return FutureBuilder(
      future: userProvider.getMyUserInfo(),
      builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
        if(snapshot.hasData){
          return Container(
            padding: EdgeInsets.symmetric(horizontal:20),
            child: Title(color: Colors.black, child: 
                    Text(snapshot.data.name+', te puede interesar:',
                    textAlign: TextAlign.start, 
                    style: TextStyle(
                      fontSize: 20
                    ),)
                    ),
          );
        }else{
          return Text("");
        }
      }
    );
  }

  Widget _insideTheCircle(User user){
    return Column(

      children: <Widget>[
        Text(user.levelsId.toString(), style: TextStyle(
          fontSize: 50,
        ),),
        Text(user.level.name, style: TextStyle(
          fontSize: 20,
        ))
      ],
    );
  }

  Widget pageViewActivities(){
    return ListView(
      children: <Widget>[
        EventComponent()
      ],
    );
  }

  Widget mensajeMotivacional(UserProvider userProvider){
    return FutureBuilder(
      future: userProvider.getMyUserInfo(),
      builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
        if(snapshot.hasData){
          return Container(
            padding: EdgeInsets.symmetric(horizontal:20),
            child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Center(
                  
                  child: Text(snapshot.data.level.description,style: TextStyle(
                        fontSize: 16
                      ))),
                ),
            ),
          );
        }else{
          return Text("");
        }
      },
    );
  }

}